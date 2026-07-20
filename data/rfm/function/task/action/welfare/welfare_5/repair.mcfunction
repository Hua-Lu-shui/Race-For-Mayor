#达到所需次数后合上当前井盖并计入完成数
setblock ~ ~ ~ minecraft:iron_trapdoor[half=bottom,facing=north,open=false,powered=false,waterlogged=false] replace
particle minecraft:happy_villager ~ ~0.5 ~ 0.35 0.25 0.35 0.1 10 force
playsound minecraft:block.anvil.use master @a ~ ~ ~ 0.7 1.4 1
scoreboard players add @a[scores={action_task=805,manhole_state=1},limit=1] manhole_repaired 1
title @a[scores={action_task=805,manhole_state=1}] actionbar {"text":"井盖修复完成！","color":"green","bold":true}
execute as @a[scores={action_task=805,manhole_state=1},limit=1] run bossbar set rfm:manhole_time name [{"text":"井盖安全巡检  ·  已修复 ","color":"red"},{"score":{"name":"@s","objective":"manhole_repaired"},"color":"yellow"},{"text":" / 6","color":"red"}]
execute as @a[scores={action_task=805,manhole_state=1},limit=1] if score @s manhole_repaired matches 6.. run function rfm:task/action/welfare/welfare_5/result
#删除贴在当前活板门表面的检测面和中心锚点
kill @e[type=minecraft:interaction,tag=rfm_manhole_interaction,distance=..1.5]
kill @s
