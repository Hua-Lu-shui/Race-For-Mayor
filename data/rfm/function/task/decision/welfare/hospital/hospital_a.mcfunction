execute if score @s decision_task matches 301 run scoreboard players add @s welfare 8
execute if score @s decision_task matches 301 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 301 run scoreboard players add @s fame 2
execute if score @s decision_task matches 301 run tellraw @s [{"translate":"rfm.text.797be8270634","color":"red"},{"translate":"rfm.text.84b26502d2e1","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"}]
execute if score @s decision_task matches 301 run scoreboard players set @s decision_task 0
