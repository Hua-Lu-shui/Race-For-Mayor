execute if score @s decision_task matches 314 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 314 run scoreboard players add @s fame 2
execute if score @s decision_task matches 314 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 314 run tellraw @s [{"translate":"rfm.text.ae78842cb700","color":"aqua"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 314 run scoreboard players set @s decision_task 0
