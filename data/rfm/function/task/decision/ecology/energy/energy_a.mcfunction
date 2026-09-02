execute if score @s decision_task matches 405 run scoreboard players add @s ecology 8
execute if score @s decision_task matches 405 run scoreboard players add @s fame 2
execute if score @s decision_task matches 405 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 405 run tellraw @s [{"translate":"rfm.text.be037d493d93","color":"red"},{"translate":"rfm.text.c0e789ceb9a3","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"}]
execute if score @s decision_task matches 405 run scoreboard players set @s decision_task 0
