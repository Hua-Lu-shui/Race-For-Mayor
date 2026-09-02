execute if score @s decision_task matches 415 run scoreboard players add @s ecology 10
execute if score @s decision_task matches 415 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 415 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 415 run tellraw @s [{"translate":"rfm.text.9ab0cae08284","color":"red"},{"translate":"rfm.text.4bf2c9891f42","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"}]
execute if score @s decision_task matches 415 run scoreboard players set @s decision_task 0
