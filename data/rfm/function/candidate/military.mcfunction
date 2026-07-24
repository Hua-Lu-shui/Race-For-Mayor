#将玩家设置为军人候选人并初始化对应属性
scoreboard players set @s candidate 6
team join military @s

scoreboard players set @s welfare 11
scoreboard players set @s fame 11
scoreboard players set @s economy 9
scoreboard players set @s ecology 9
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"text":"你选择了：","color":"white"},{"text":"军人","color":"#8B5A2B"}]
title @s subtitle [{"text":"名誉:11","color":"aqua"},{"text":" 经济:9","color":"yellow"},{"text":" 生态:9","color":"green"},{"text":" 民生:11","color":"red"}]
tellraw @s [{"text":"【孤注一掷】","color":"#8B5A2B","bold":true},{"text":"完美完成行动任务时，最低属性翻倍。","color":"white"}]
