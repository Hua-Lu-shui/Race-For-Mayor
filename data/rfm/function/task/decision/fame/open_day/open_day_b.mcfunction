execute if score @s decision_task matches 109 run scoreboard players add @s fame 4
execute if score @s decision_task matches 109 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 109 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 109 run tellraw @s [{"translate":"rfm.text.ee04d5e673a3","color":"aqua"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 109 run scoreboard players set @s decision_task 0
