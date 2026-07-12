scoreboard players set @s next_round_ready 1
scoreboard players set @s next_round_drop 0
clear @s minecraft:paper[minecraft:custom_data={next_round_ready:1}]
execute if score #round round matches 0 run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" 已准备好开始第一轮。","color":"gray"}]
execute if score #round round matches 1.. run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" 已准备好进入下一轮。","color":"gray"}]
