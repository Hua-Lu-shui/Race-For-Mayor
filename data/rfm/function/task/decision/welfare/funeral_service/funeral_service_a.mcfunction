execute if score @s decision_task matches 320 run scoreboard players add @s welfare 10
execute if score @s decision_task matches 320 run scoreboard players add @s fame 4
execute if score @s decision_task matches 320 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 320 run tellraw @s [{"translate":"rfm.text.b3d5bd53cdc4","color":"red"},{"translate":"rfm.text.7679d74c1c81","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"}]
execute if score @s decision_task matches 320 run scoreboard players set @s decision_task 0
