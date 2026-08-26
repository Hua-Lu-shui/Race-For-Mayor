#将玩家设置为明星候选人并初始化对应属性
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set @s candidate 1
team join star @s

scoreboard players set @s welfare 7
scoreboard players set @s fame 15
scoreboard players set @s economy 12
scoreboard players set @s ecology 6
function rfm:attribute/minimum

title @s times 10 40 0
title @s title [{"translate":"rfm.text.29c85476c04c","color":"white"},{"translate":"rfm.text.69ed896366d3","color":"aqua"}]
title @s subtitle [{"translate":"rfm.text.61ab3a096d8a","color":"aqua"},{"translate":"rfm.text.90365ab5a3fe","color":"yellow"},{"translate":"rfm.text.a0bc7296e106","color":"green"},{"translate":"rfm.text.6a0bf085f4e5","color":"red"}]
tellraw @s [{"translate":"rfm.text.dda2f374dd38","color":"aqua","bold":true},{"translate":"rfm.text.ccdd0cdc6a51","color":"white"}]
