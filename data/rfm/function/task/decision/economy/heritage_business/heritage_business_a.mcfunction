execute if score @s decision_task matches 219 run scoreboard players add @s economy 8
execute if score @s decision_task matches 219 run scoreboard players add @s fame 4
execute if score @s decision_task matches 219 run scoreboard players remove @s welfare 6
execute if score @s decision_task matches 219 run tellraw @s [{"translate":"rfm.text.e4ec40771c0c","color":"red"},{"translate":"rfm.text.9f3dca44000b","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.bf455db6070a","color":"red"}]
execute if score @s decision_task matches 219 run scoreboard players set @s decision_task 0
