execute if score @s decision_task matches 303 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 303 run scoreboard players add @s fame 2
execute if score @s decision_task matches 303 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 303 run tellraw @s [{"translate":"rfm.text.ce2ba83f4ef3","color":"aqua"},{"translate":"rfm.text.37adbac8f2b5","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 303 run scoreboard players set @s decision_task 0
