#井盖中心锚点统一保存20次维修进度
scoreboard players add @s manhole_hits 1
particle minecraft:crit ~ ~0.7 ~ 0.25 0.35 0.25 0.05 5 force
playsound minecraft:block.anvil.hit master @a ~ ~ ~ 0.35 1.7 1
title @a[scores={action_task=805,manhole_state=1}] actionbar [{"text":"井盖维修进度：","color":"yellow"},{"score":{"name":"@s","objective":"manhole_hits"},"color":"white"},{"text":" / 20","color":"gray"}]
execute if score @s manhole_hits >= @s manhole_need run function rfm:task/action/welfare/welfare_5/repair
