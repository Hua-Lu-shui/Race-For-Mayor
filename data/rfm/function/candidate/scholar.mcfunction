playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set @s candidate 4
team join scholar @s

scoreboard players set @s welfare 9
scoreboard players set @s fame 10
scoreboard players set @s economy 8
scoreboard players set @s ecology 13
function rfm:attribute/minimum


title @s times 10 40 0
title @s title [{"translate":"rfm.text.29c85476c04c","color":"white"},{"translate":"rfm.text.d283b25d4b3c","color":"green"}]
title @s subtitle [{"translate":"rfm.text.0c8f491f2696","color":"aqua"},{"translate":"rfm.text.89166bab1105","color":"yellow"},{"translate":"rfm.text.38fc16a81b4e","color":"green"},{"translate":"rfm.text.66585118f716","color":"red"}]
tellraw @s [{"translate":"rfm.text.75d019b3a0db","color":"green","bold":true},{"translate":"rfm.text.4d2206dbdc76","color":"white"}]
