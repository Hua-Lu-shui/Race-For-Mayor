playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set @s candidate 7
team join lawyer @s

scoreboard players set @s welfare 11
scoreboard players set @s fame 11
scoreboard players set @s economy 11
scoreboard players set @s ecology 7
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"translate":"rfm.text.29c85476c04c","color":"white"},{"translate":"rfm.text.786c0074d224","color":"light_purple"}]
title @s subtitle [{"translate":"rfm.text.1a3d9cecfa98","color":"aqua"},{"translate":"rfm.text.ef49f203e8b8","color":"yellow"},{"translate":"rfm.text.675c0066a917","color":"green"},{"translate":"rfm.text.dffbeaa284ca","color":"red"}]
tellraw @s [{"translate":"rfm.text.df0be2cf860b","color":"light_purple","bold":true},{"translate":"rfm.text.15b3817cbd97","color":"white"}]
