#将玩家设置为公务员候选人并初始化对应属性
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set @s candidate 5
team join official @s

scoreboard players set @s welfare 10
scoreboard players set @s fame 10
scoreboard players set @s economy 10
scoreboard players set @s ecology 10
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"text":"你选择了：","color":"white"},{"text":"公务员","color":"#F5F5DC"}]
title @s subtitle [{"text":"名誉:10","color":"aqua"},{"text":" 经济:10","color":"yellow"},{"text":" 生态:10","color":"green"},{"text":" 民生:10","color":"red"}]
tellraw @s [{"text":"【与时俱进】","color":"#F5F5DC","bold":true},{"text":"最终结算时，最高属性对应权重 +2，最低属性对应权重 -2。","color":"white"}]
