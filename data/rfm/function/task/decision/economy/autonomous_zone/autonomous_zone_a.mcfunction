execute if score @s decision_task matches 218 run scoreboard players add @s economy 10
execute if score @s decision_task matches 218 run scoreboard players add @s fame 4
execute if score @s decision_task matches 218 run scoreboard players remove @s welfare 6
execute if score @s decision_task matches 218 run tellraw @s [{"translate":"rfm.text.96a652fe516a","color":"red"},{"translate":"rfm.text.8a17b3f036be","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.bf455db6070a","color":"red"}]
execute if score @s decision_task matches 218 run scoreboard players set @s decision_task 0
