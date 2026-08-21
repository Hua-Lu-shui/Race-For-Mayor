scoreboard players set @s group_ready 1
clear @s minecraft:map[minecraft:custom_data={collective_start_ready:1}]
tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"white"},{"text":" 已准备好开始小游戏。","color":"gray"}]
