execute if score @s decision_task matches 420 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 420 run scoreboard players add @s fame 4
execute if score @s decision_task matches 420 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 420 run tellraw @s [{"translate":"rfm.text.2c6764f2f2f0","color":"aqua"},{"translate":"rfm.text.643208335c88","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 420 run scoreboard players set @s decision_task 0
