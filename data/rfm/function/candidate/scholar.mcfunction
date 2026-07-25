#将玩家设置为学者候选人并初始化对应属性
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set @s candidate 4
team join scholar @s

scoreboard players set @s welfare 9
scoreboard players set @s fame 10
scoreboard players set @s economy 8
scoreboard players set @s ecology 13
function rfm:attribute/minimum


title @s times 10 40 0
title @s title [{"text":"你选择了：","color":"white"},{"text":"学者","color":"green"}]
title @s subtitle [{"text":"名誉:10","color":"aqua"},{"text":" 经济:8","color":"yellow"},{"text":" 生态:13","color":"green"},{"text":" 民生:9","color":"red"}]
tellraw @s [{"text":"【运筹帷幄】","color":"green","bold":true},{"text":"选择决策任务时，显示三个选项对属性的精确影响。","color":"white"}]
