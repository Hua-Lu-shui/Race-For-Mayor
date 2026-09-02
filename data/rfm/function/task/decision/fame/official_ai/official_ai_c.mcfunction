execute if score @s decision_task matches 118 run scoreboard players remove @s fame 4
execute if score @s decision_task matches 118 run scoreboard players add @s economy 4
execute if score @s decision_task matches 118 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 118 run tellraw @s [{"translate":"rfm.text.880d8f1daca8","color":"green"},{"translate":"rfm.text.87ea5bdc6ed8","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"}]
execute if score @s decision_task matches 118 run scoreboard players set @s decision_task 0
