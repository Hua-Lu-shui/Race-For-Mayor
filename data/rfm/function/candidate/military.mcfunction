playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set @s candidate 6
team join military @s

scoreboard players set @s welfare 11
scoreboard players set @s fame 11
scoreboard players set @s economy 9
scoreboard players set @s ecology 9
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"translate":"rfm.text.29c85476c04c","color":"white"},{"translate":"rfm.text.ae87d8da0853","color":"#FFA500"}]
title @s subtitle [{"translate":"rfm.text.1a3d9cecfa98","color":"aqua"},{"translate":"rfm.text.d8d219adbb05","color":"yellow"},{"translate":"rfm.text.05ba5742effe","color":"green"},{"translate":"rfm.text.dffbeaa284ca","color":"red"}]
tellraw @s [{"translate":"rfm.text.55bce636bc10","color":"#FFA500","bold":true},{"translate":"rfm.text.66f1706cba5a","color":"white"}]
