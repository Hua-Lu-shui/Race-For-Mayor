#使"next_room"计分板递增
scoreboard players add #next_room room 1
#将当前玩家的房间编号设置为"next_room"计分板的值
scoreboard players operation @s room = #next_room room
#根据玩家的房间编号将玩家传送到对应的房间位置
execute if score @s room matches 1 run tp @s -1 -62 0
execute if score @s room matches 2 run tp @s -1 -62 2
execute if score @s room matches 3 run tp @s -1 -62 4
execute if score @s room matches 4 run tp @s -1 -62 6
execute if score @s room matches 5 run tp @s -1 -62 8
execute if score @s room matches 6 run tp @s -1 -62 10
execute if score @s room matches 7 run tp @s -1 -62 12
execute if score @s room matches 8 run tp @s -1 -62 12
#可能多余
execute if score @s room matches 9.. run tellraw @s {"text":"办公室已满，你暂时无法加入本局。","color":"red"}