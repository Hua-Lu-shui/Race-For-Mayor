execute if score @s decision_task matches 309 run scoreboard players add @s economy 4
execute if score @s decision_task matches 309 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 309 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 309 run tellraw @s [{"translate":"rfm.text.f33a73c50376","color":"green"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 309 run scoreboard players set @s decision_task 0
