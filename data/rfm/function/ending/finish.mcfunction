#第一层：找出最高最终票数，只保留最高票候选人进入平票裁决
tag @a remove rfm_settling
tag @a remove rfm_winner
tag @a remove rfm_vote_tied
tag @a remove rfm_random_winner
scoreboard players set #best_final final_votes -2147483648
execute as @a if score @s final_votes > #best_final final_votes run scoreboard players operation #best_final final_votes = @s final_votes
execute as @a if score @s final_votes = #best_final final_votes run tag @s add rfm_vote_tied

#第二层：最终票数相同时，比较名誉、经济、民生、生态四项原始属性之和
execute as @a[tag=rfm_vote_tied] run scoreboard players operation @s attribute_total = @s fame
execute as @a[tag=rfm_vote_tied] run scoreboard players operation @s attribute_total += @s economy
execute as @a[tag=rfm_vote_tied] run scoreboard players operation @s attribute_total += @s welfare
execute as @a[tag=rfm_vote_tied] run scoreboard players operation @s attribute_total += @s ecology
scoreboard players set #best_attribute attribute_total -2147483648
execute as @a[tag=rfm_vote_tied] if score @s attribute_total > #best_attribute attribute_total run scoreboard players operation #best_attribute attribute_total = @s attribute_total
execute as @a[tag=rfm_vote_tied] if score @s attribute_total = #best_attribute attribute_total run tag @s add rfm_winner

#第三层：属性总和仍相同时，从并列候选人中随机保留一位胜者
tag @a[tag=rfm_winner,sort=random,limit=1] add rfm_random_winner
tag @a remove rfm_winner
tag @a[tag=rfm_random_winner] add rfm_winner
tag @a remove rfm_vote_tied
tag @a remove rfm_random_winner
scoreboard players set #settle_state settle_state 4

title @a times 10 200 40
title @a title [{"text":"统计完成，下一任市长是：","color":"gold","bold":true},{"selector":"@a[tag=rfm_winner]","separator":{"text":"、","color":"yellow"},"color":"yellow","bold":true},{"text":"！","color":"gold","bold":true}]
title @a subtitle {"text":"本局游戏结束","color":"green","bold":true}
tellraw @a [{"text":"统计完成，下一任市长是：","color":"gold","bold":true},{"selector":"@a[tag=rfm_winner]","separator":{"text":"、","color":"yellow"},"color":"yellow","bold":true},{"text":"！本局游戏结束。","color":"gold","bold":true}]
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1.0 0.8
