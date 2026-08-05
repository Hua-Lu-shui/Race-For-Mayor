#将玩家设置为医生候选人并初始化对应属性
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set @s candidate 8
team join doctor @s

scoreboard players set @s fame 8
scoreboard players set @s economy 9
scoreboard players set @s welfare 11
scoreboard players set @s ecology 12
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"text":"你选择了：","color":"white"},{"text":"医生","color":"#012696"}]
title @s subtitle [{"text":"名誉:8","color":"aqua"},{"text":" 经济:9","color":"yellow"},{"text":" 生态:12","color":"green"},{"text":" 民生:11","color":"red"}]
tellraw @s [{"text":"【医者仁心】","color":"#012696","bold":true},{"text":"可同时拥有两件藏品，且开局随机获得一件藏品。","color":"white"}]

