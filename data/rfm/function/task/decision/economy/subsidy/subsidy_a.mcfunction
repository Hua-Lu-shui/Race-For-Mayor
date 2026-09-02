execute if score @s decision_task matches 203 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 203 run scoreboard players add @s welfare 8
execute if score @s decision_task matches 203 run scoreboard players add @s fame 4
execute if score @s decision_task matches 203 run tellraw @s [{"translate":"rfm.text.98259b9d051f","color":"red"},{"translate":"rfm.text.e187c8894717","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.84b26502d2e1","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"}]
execute if score @s decision_task matches 203 run scoreboard players set @s decision_task 0
