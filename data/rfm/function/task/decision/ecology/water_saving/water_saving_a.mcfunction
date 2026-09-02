execute if score @s decision_task matches 413 run scoreboard players add @s ecology 8
execute if score @s decision_task matches 413 run scoreboard players add @s economy 4
execute if score @s decision_task matches 413 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 413 run tellraw @s [{"translate":"rfm.text.e66db2cba401","color":"red"},{"translate":"rfm.text.c0e789ceb9a3","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"}]
execute if score @s decision_task matches 413 run scoreboard players set @s decision_task 0
