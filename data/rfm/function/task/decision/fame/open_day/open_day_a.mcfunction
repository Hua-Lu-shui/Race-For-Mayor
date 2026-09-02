execute if score @s decision_task matches 109 run scoreboard players add @s fame 8
execute if score @s decision_task matches 109 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 109 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 109 run tellraw @s [{"translate":"rfm.text.e0b176e50de0","color":"red"},{"translate":"rfm.text.d5f8f0055544","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.72d780b63e29","color":"yellow"}]
execute if score @s decision_task matches 109 run scoreboard players set @s decision_task 0
