#到达场地并阅读介绍后，记录在自己附近丢出“准备开始”地图的玩家
execute as @a run function rfm:collective/start_ready/lock_position
execute as @a[scores={group_ready=0}] at @s if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}] run function rfm:collective/start_ready/player_ready
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]

execute store result score #online_total player_count run execute if entity @a
execute store result score #ready_total player_count run execute if entity @a[scores={group_ready=1}]
execute if score #online_total player_count = #ready_total player_count if score #online_total player_count matches 1.. run function rfm:collective/game/start_selected
