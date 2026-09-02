execute if score @s decision_task matches 312 run scoreboard players add @s welfare 8
execute if score @s decision_task matches 312 run scoreboard players add @s fame 2
execute if score @s decision_task matches 312 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 312 run tellraw @s [{"translate":"rfm.text.cd4cda91e8f0","color":"red"},{"translate":"rfm.text.84b26502d2e1","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"}]
execute if score @s decision_task matches 312 run scoreboard players set @s decision_task 0
