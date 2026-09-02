execute if score @s decision_task matches 205 run scoreboard players add @s fame 2
execute if score @s decision_task matches 205 run scoreboard players add @s ecology 6
execute if score @s decision_task matches 205 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 205 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 205 run tellraw @s [{"translate":"rfm.text.672a0f7a459d","color":"green"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.a6ffc5897bf5","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 205 run scoreboard players set @s decision_task 0
