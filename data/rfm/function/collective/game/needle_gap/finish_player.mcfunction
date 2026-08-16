#进入终点检测区域：按同tick内的检测顺序记录到达名次，并转换为供统一排名函数使用的高分优先值
scoreboard players set @s group_finished 1
scoreboard players add #group_arrival group_arrival 1
scoreboard players set @s group_score 9
scoreboard players operation @s group_score -= #group_arrival group_arrival
effect clear @s minecraft:levitation
tellraw @a [{"selector":"@s","color":"light_purple","bold":true},{"text":" 已抵达顶部终点，当前到达名次：第","color":"white"},{"score":{"name":"#group_arrival","objective":"group_arrival"},"color":"gold","bold":true},{"text":"名","color":"gold","bold":true}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.2 1
gamemode spectator @s
