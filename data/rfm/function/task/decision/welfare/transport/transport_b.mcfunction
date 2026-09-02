execute if score @s decision_task matches 304 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 304 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 304 run tellraw @s [{"translate":"rfm.text.5ccbdcde2115","color":"aqua"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 304 run scoreboard players set @s decision_task 0
