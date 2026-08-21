#办公室准备阶段允许玩家自由移动，只记录在自己附近丢出专用命名牌的玩家
execute as @a[scores={group_ready=0}] at @s if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{collective_venue_ready:1}}}}] run function rfm:collective/prepare_player_ready
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_venue_ready:1}}}}]

execute store result score #online_total player_count run execute if entity @a
execute store result score #ready_total player_count run execute if entity @a[scores={group_ready=1}]
execute if score #online_total player_count = #ready_total player_count if score #online_total player_count matches 1.. run function rfm:collective/game/draw
