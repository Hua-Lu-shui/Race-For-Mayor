playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set @s candidate 8
team join doctor @s

scoreboard players set @s fame 8
scoreboard players set @s economy 9
scoreboard players set @s welfare 11
scoreboard players set @s ecology 12
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"translate":"rfm.text.29c85476c04c","color":"white"},{"translate":"rfm.text.552caeb5bd54","color":"#012696"}]
title @s subtitle [{"translate":"rfm.text.00d13e70b8ae","color":"aqua"},{"translate":"rfm.text.d8d219adbb05","color":"yellow"},{"translate":"rfm.text.750722c0f2f9","color":"green"},{"translate":"rfm.text.dffbeaa284ca","color":"red"}]
tellraw @s [{"translate":"rfm.text.276d39c23b77","color":"#012696","bold":true},{"translate":"rfm.text.b773312c9e43","color":"white"}]
