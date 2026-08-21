execute unless score #session_online game_session = #session_size game_session run schedule function rfm:ending/combine 20t replace
execute unless score #session_online game_session = #session_size game_session run return 0
#四项属性票数全部停止后合并为属性票数总和
execute as @a[tag=rfm_participant,tag=rfm_settling,limit=1] run scoreboard players operation @s vote_total = @s vote_fame
execute as @a[tag=rfm_participant,tag=rfm_settling,limit=1] run scoreboard players operation @s vote_total += @s vote_economy
execute as @a[tag=rfm_participant,tag=rfm_settling,limit=1] run scoreboard players operation @s vote_total += @s vote_welfare
execute as @a[tag=rfm_participant,tag=rfm_settling,limit=1] run scoreboard players operation @s vote_total += @s vote_ecology
title @a[tag=rfm_participant] title [{"text":"属性票数合计：","color":"gold","bold":true},{"score":{"name":"@a[tag=rfm_participant,tag=rfm_settling,limit=1]","objective":"vote_total"},"color":"white","bold":true}]
execute as @a[tag=rfm_participant] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.7 1.2
schedule function rfm:ending/title/show 40t replace
