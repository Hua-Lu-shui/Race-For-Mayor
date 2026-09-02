execute if score @s decision_task matches 202 run scoreboard players add @s fame 2
execute if score @s decision_task matches 202 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 202 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 202 run tellraw @s [{"translate":"rfm.text.48b867246b32","color":"green"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.5ee7110d02b1","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 202 run scoreboard players set @s decision_task 0
