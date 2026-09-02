execute if score @s decision_task matches 102 run scoreboard players add @s fame 6
execute if score @s decision_task matches 102 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 102 run tellraw @s [{"translate":"rfm.text.186911c31c75","color":"red"},{"translate":"rfm.text.546e37949bb5","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 102 run scoreboard players set @s decision_task 0
