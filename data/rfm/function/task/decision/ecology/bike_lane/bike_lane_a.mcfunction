execute if score @s decision_task matches 407 run scoreboard players add @s ecology 8
execute if score @s decision_task matches 407 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 407 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 407 run tellraw @s [{"translate":"rfm.text.dea074702017","color":"red"},{"translate":"rfm.text.c0e789ceb9a3","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"}]
execute if score @s decision_task matches 407 run scoreboard players set @s decision_task 0
