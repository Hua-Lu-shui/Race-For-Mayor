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
title @s title [{"translate":"rfm.text.29c85476c04c","color":"white"},{"translate":"rfm.text.a64d79f9cbf2","color":"red"}]
title @s subtitle [{"translate":"rfm.text.1a3d9cecfa98","color":"aqua"},{"translate":"rfm.text.2dfdd698be4e","color":"yellow"},{"translate":"rfm.text.c818830c0aed","color":"green"},{"translate":"rfm.text.8fd25b3a5257","color":"red"}]
tellraw @s [{"translate":"rfm.text.85dbbc2be30a","color":"red","bold":true},{"translate":"rfm.text.bc50361854ad","color":"white"}]
