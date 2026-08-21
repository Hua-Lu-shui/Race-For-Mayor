#四项属性票数全部停止后合并为属性票数总和
execute as @a[tag=rfm_settling,limit=1] run scoreboard players operation @s vote_total = @s vote_fame
execute as @a[tag=rfm_settling,limit=1] run scoreboard players operation @s vote_total += @s vote_economy
execute as @a[tag=rfm_settling,limit=1] run scoreboard players operation @s vote_total += @s vote_welfare
execute as @a[tag=rfm_settling,limit=1] run scoreboard players operation @s vote_total += @s vote_ecology
title @a title [{"text":"属性票数合计：","color":"gold","bold":true},{"score":{"name":"@a[tag=rfm_settling,limit=1]","objective":"vote_total"},"color":"white","bold":true}]
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.7 1.2
schedule function rfm:ending/title/show 40t replace
