#将玩家设置为企业家候选人并初始化对应属性
scoreboard players set @s candidate 2
team join business @s

scoreboard players set @s economy 15
scoreboard players set @s fame 11
scoreboard players set @s welfare 8
scoreboard players set @s ecology 6
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"text":"你选择了：","color":"white"},{"text":"企业家","color":"yellow"}]
title @s subtitle [{"text":"名誉:11","color":"aqua"},{"text":" 经济:15","color":"yellow"},{"text":" 生态:6","color":"green"},{"text":" 民生:8","color":"red"}]
tellraw @s [{"text":"【富人思维】","color":"yellow","bold":true},{"text":"每轮结束后，若经济为最低属性，则经济 +5。","color":"white"}]
