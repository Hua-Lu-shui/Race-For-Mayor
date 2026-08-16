#将玩家设置为社区领袖候选人并初始化对应属性
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set @s candidate 3
team join community @s

scoreboard players set @s welfare 14
scoreboard players set @s fame 11
scoreboard players set @s economy 7
scoreboard players set @s ecology 8
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"text":"你选择了：","color":"white"},{"text":"社区领袖","color":"red"}]
title @s subtitle [{"text":"名誉:11","color":"aqua"},{"text":" 经济:7","color":"yellow"},{"text":" 生态:8","color":"green"},{"text":" 民生:14","color":"red"}]
tellraw @s [{"text":"【得道多助】","color":"red","bold":true},{"text":"最终结算时，将民生赋予最低属性。","color":"white"}]
