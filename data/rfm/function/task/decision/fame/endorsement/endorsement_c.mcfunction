execute if score @s decision_task matches 108 run scoreboard players add @s fame 2
execute if score @s decision_task matches 108 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 108 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 108 run tellraw @s [{"translate":"rfm.text.e41116e7b972","color":"green"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 108 run scoreboard players set @s decision_task 0
