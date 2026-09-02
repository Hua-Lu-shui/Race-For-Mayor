execute if score @s decision_task matches 212 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 212 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 212 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 212 run tellraw @s [{"translate":"rfm.text.594fc0d7c7fd","color":"green"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 212 run scoreboard players set @s decision_task 0
