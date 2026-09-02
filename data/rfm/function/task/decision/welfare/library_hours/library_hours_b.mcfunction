execute if score @s decision_task matches 315 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 315 run scoreboard players add @s fame 2
execute if score @s decision_task matches 315 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 315 run tellraw @s [{"translate":"rfm.text.66e655b2cb1d","color":"aqua"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 315 run scoreboard players set @s decision_task 0
