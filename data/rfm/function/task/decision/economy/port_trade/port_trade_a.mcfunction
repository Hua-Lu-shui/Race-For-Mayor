execute if score @s decision_task matches 213 run scoreboard players add @s economy 12
execute if score @s decision_task matches 213 run scoreboard players add @s fame 2
execute if score @s decision_task matches 213 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 213 run tellraw @s [{"translate":"rfm.text.ed5e8b6016ff","color":"red"},{"translate":"rfm.text.647b221c9c2e","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.40e5da9b7fc0","color":"green"}]
execute if score @s decision_task matches 213 run scoreboard players set @s decision_task 0
