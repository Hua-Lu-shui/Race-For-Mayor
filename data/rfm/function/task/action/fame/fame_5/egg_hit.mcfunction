#本函数以命中的鸡蛋物品为执行者
execute as @a[scores={action_task=605,cheer_state=1},distance=..1.15,limit=1,sort=nearest] if score @s cheer_score matches 1.. run scoreboard players remove @s cheer_score 1
execute as @a[scores={action_task=605,cheer_state=1},distance=..1.15,limit=1,sort=nearest] run scoreboard players set @s cheer_combo 0
execute as @a[scores={action_task=605,cheer_state=1},distance=..1.15,limit=1,sort=nearest] run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.7 1
execute as @a[scores={action_task=605,cheer_state=1},distance=..1.15,limit=1,sort=nearest] run title @s actionbar {"text":"被鸡蛋击中！-1分，连击中断","color":"red","bold":true}
kill @s
