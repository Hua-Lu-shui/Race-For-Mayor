#将玩家设置为明星候选人并初始化对应属性
scoreboard players set @s candidate 1
team join star @s

scoreboard players set @s welfare 6
scoreboard players set @s fame 15
scoreboard players set @s economy 13
scoreboard players set @s ecology 6
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"text":"你选择了：","color":"white"},{"text":"明星","color":"aqua"}]
title @s subtitle [{"text":"名誉:15","color":"aqua"},{"text":" 经济:13","color":"yellow"},{"text":" 生态:6","color":"green"},{"text":" 民生:6","color":"red"}]
