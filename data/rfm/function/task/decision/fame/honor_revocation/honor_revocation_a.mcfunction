execute if score @s decision_task matches 120 run scoreboard players add @s fame 10
execute if score @s decision_task matches 120 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 120 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 120 run tellraw @s [{"translate":"rfm.text.d809cfab73df","color":"red"},{"translate":"rfm.text.9154b82aecbd","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"}]
execute if score @s decision_task matches 120 run scoreboard players set @s decision_task 0
