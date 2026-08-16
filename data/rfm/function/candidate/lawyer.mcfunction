#将玩家设置为律师候选人并初始化对应属性
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set @s candidate 7
team join lawyer @s

scoreboard players set @s welfare 11
scoreboard players set @s fame 11
scoreboard players set @s economy 11
scoreboard players set @s ecology 7
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"text":"你选择了：","color":"white"},{"text":"律师","color":"light_purple"}]
title @s subtitle [{"text":"名誉:11","color":"aqua"},{"text":" 经济:11","color":"yellow"},{"text":" 生态:7","color":"green"},{"text":" 民生:11","color":"red"}]
tellraw @s [{"text":"【维权意识】","color":"light_purple","bold":true},{"text":"可以使用属性互换令牌，但不能成为互换目标。","color":"white"}]
