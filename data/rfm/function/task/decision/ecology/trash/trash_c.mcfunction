execute if score @s decision_task matches 404 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 404 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 404 run tellraw @s [{"translate":"rfm.text.02da0d854a88","color":"green"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.40e5da9b7fc0","color":"green"}]
execute if score @s decision_task matches 404 run scoreboard players set @s decision_task 0
