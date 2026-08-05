#将玩家设置为明星候选人并初始化对应属性
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set @s candidate 1
team join star @s

scoreboard players set @s welfare 7
scoreboard players set @s fame 15
scoreboard players set @s economy 12
scoreboard players set @s ecology 6
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"text":"你选择了：","color":"white"},{"text":"明星","color":"aqua"}]
title @s subtitle [{"text":"名誉:15","color":"aqua"},{"text":" 经济:12","color":"yellow"},{"text":" 生态:6","color":"green"},{"text":" 民生:7","color":"red"}]
tellraw @s [{"text":"【粉丝效应】","color":"aqua","bold":true},{"text":"返还因任务而降低的除名誉外的属性。","color":"white"}]
