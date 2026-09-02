execute if score @s decision_task matches 404 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 404 run scoreboard players add @s fame 2
execute if score @s decision_task matches 404 run tellraw @s [{"translate":"rfm.text.837de91880e1","color":"aqua"},{"translate":"rfm.text.643208335c88","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"}]
execute if score @s decision_task matches 404 run scoreboard players set @s decision_task 0
