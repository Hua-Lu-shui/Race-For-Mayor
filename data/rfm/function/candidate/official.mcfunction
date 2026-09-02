playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set @s candidate 5
team join official @s

scoreboard players set @s welfare 10
scoreboard players set @s fame 10
scoreboard players set @s economy 10
scoreboard players set @s ecology 10
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"translate":"rfm.text.29c85476c04c","color":"white"},{"translate":"rfm.text.6d27f34521b6","color":"#F5F5DC"}]
title @s subtitle [{"translate":"rfm.text.0c8f491f2696","color":"aqua"},{"translate":"rfm.text.37acb7d8daa2","color":"yellow"},{"translate":"rfm.text.1dfeff009a2d","color":"green"},{"translate":"rfm.text.c1e2b06fe387","color":"red"}]
tellraw @s [{"translate":"rfm.text.1f27b414e59f","color":"#F5F5DC","bold":true},{"translate":"rfm.text.687ebfddb3bf","color":"white"}]
