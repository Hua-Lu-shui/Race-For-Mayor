execute if score @s decision_task matches 111 run scoreboard players add @s fame 6
execute if score @s decision_task matches 111 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 111 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 111 run tellraw @s [{"translate":"rfm.text.a888c5b999e4","color":"red"},{"translate":"rfm.text.546e37949bb5","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.72d780b63e29","color":"yellow"}]
execute if score @s decision_task matches 111 run scoreboard players set @s decision_task 0
