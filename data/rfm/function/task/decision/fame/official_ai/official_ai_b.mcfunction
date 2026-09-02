execute if score @s decision_task matches 118 run scoreboard players add @s fame 4
execute if score @s decision_task matches 118 run scoreboard players add @s economy 2
execute if score @s decision_task matches 118 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 118 run tellraw @s [{"translate":"rfm.text.3198a38664a8","color":"aqua"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 118 run scoreboard players set @s decision_task 0
