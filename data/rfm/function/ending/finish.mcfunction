execute unless score #session_online game_session = #session_size game_session run schedule function rfm:ending/finish 20t replace
execute unless score #session_online game_session = #session_size game_session run return 0
#第一层：找出最高最终票数，只保留最高票候选人进入平票裁决
tag @a[tag=rfm_participant] remove rfm_settling
tag @a[tag=rfm_participant] remove rfm_winner
tag @a[tag=rfm_participant] remove rfm_vote_tied
tag @a[tag=rfm_participant] remove rfm_random_winner
scoreboard players set #best_final final_votes -2147483648
scoreboard players operation #best_final final_votes > @a[tag=rfm_participant] final_votes
execute as @a[tag=rfm_participant] if score @s final_votes = #best_final final_votes run tag @s add rfm_vote_tied

#第二层：最终票数相同时，比较名誉、经济、民生、生态四项原始属性之和
execute as @a[tag=rfm_participant,tag=rfm_vote_tied] run scoreboard players operation @s attribute_total = @s fame
execute as @a[tag=rfm_participant,tag=rfm_vote_tied] run scoreboard players operation @s attribute_total += @s economy
execute as @a[tag=rfm_participant,tag=rfm_vote_tied] run scoreboard players operation @s attribute_total += @s welfare
execute as @a[tag=rfm_participant,tag=rfm_vote_tied] run scoreboard players operation @s attribute_total += @s ecology
scoreboard players set #best_attribute attribute_total -2147483648
scoreboard players operation #best_attribute attribute_total > @a[tag=rfm_participant,tag=rfm_vote_tied] attribute_total
execute as @a[tag=rfm_participant,tag=rfm_vote_tied] if score @s attribute_total = #best_attribute attribute_total run tag @s add rfm_winner

#第三层：属性总和仍相同时，从并列候选人中随机保留一位胜者
tag @a[tag=rfm_participant,tag=rfm_winner,sort=random,limit=1] add rfm_random_winner
tag @a[tag=rfm_participant] remove rfm_winner
tag @a[tag=rfm_participant,tag=rfm_random_winner] add rfm_winner
tag @a[tag=rfm_participant] remove rfm_vote_tied
tag @a[tag=rfm_participant] remove rfm_random_winner
scoreboard players set #settle_state settle_state 4

title @a[tag=rfm_participant] clear
title @a[tag=rfm_participant] times 10 40 10
title @a[tag=rfm_participant] title {"translate":"rfm.text.dc3c04fce25d","color":"gold","bold":true}
schedule function rfm:ending/winner/next_mayor 60t replace
