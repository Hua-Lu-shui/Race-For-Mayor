playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set @s candidate 2
team join business @s

scoreboard players set @s economy 15
scoreboard players set @s fame 11
scoreboard players set @s welfare 8
scoreboard players set @s ecology 6
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"translate":"rfm.text.29c85476c04c","color":"white"},{"translate":"rfm.text.b91aed4fedef","color":"yellow"}]
title @s subtitle [{"translate":"rfm.text.1a3d9cecfa98","color":"aqua"},{"translate":"rfm.text.86a2a5228633","color":"yellow"},{"translate":"rfm.text.a0bc7296e106","color":"green"},{"translate":"rfm.text.223dc71ecac8","color":"red"}]
tellraw @s [{"translate":"rfm.text.bbbe0403012e","color":"yellow","bold":true},{"translate":"rfm.text.2e9b7c8a9107","color":"white"}]
