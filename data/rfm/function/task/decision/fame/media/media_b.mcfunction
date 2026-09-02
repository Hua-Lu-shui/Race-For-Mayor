execute if score @s decision_task matches 101 run scoreboard players add @s fame 4
execute if score @s decision_task matches 101 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 101 run tellraw @s [{"translate":"rfm.text.dea19d6ddcae","color":"aqua"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"}]
execute if score @s decision_task matches 101 run scoreboard players set @s decision_task 0
