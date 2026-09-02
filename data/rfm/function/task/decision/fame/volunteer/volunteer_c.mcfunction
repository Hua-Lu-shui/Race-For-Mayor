execute if score @s decision_task matches 106 run scoreboard players add @s economy 2
execute if score @s decision_task matches 106 run scoreboard players remove @s fame 4
execute if score @s decision_task matches 106 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 106 run tellraw @s [{"translate":"rfm.text.73b9ef93ff92","color":"green"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.87ea5bdc6ed8","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 106 run scoreboard players set @s decision_task 0
