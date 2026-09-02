execute if score @s decision_task matches 311 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 311 run scoreboard players add @s economy 2
execute if score @s decision_task matches 311 run scoreboard players add @s fame 2
execute if score @s decision_task matches 311 run tellraw @s [{"translate":"rfm.text.980e67197a90","color":"aqua"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"}]
execute if score @s decision_task matches 311 run scoreboard players set @s decision_task 0
