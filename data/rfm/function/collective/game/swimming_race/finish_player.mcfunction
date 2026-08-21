#终点按钮事件：按同tick内的检测顺序记录到达名次，并转换为供统一排名函数使用的高分优先值
scoreboard players set @s group_finished 1
scoreboard players add #group_arrival group_arrival 1
scoreboard players set @s group_score 9
scoreboard players operation @s group_score -= #group_arrival group_arrival
tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"aqua","bold":true},{"text":" 已按下自己泳道的终点按钮，当前到达名次：第","color":"white"},{"score":{"name":"#group_arrival","objective":"group_arrival"},"color":"gold","bold":true},{"text":"名","color":"gold","bold":true}]
playsound minecraft:entity.player.levelup master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1
gamemode adventure @s
tp @s 56 -59 -55 0 0
