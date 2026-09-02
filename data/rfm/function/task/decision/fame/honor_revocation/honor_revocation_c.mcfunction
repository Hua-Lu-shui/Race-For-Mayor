execute if score @s decision_task matches 120 run scoreboard players remove @s fame 6
execute if score @s decision_task matches 120 run scoreboard players add @s economy 2
execute if score @s decision_task matches 120 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 120 run tellraw @s [{"translate":"rfm.text.110e1be4ab3b","color":"green"},{"translate":"rfm.text.6f7256a011a0","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.37adbac8f2b5","color":"red"}]
execute if score @s decision_task matches 120 run scoreboard players set @s decision_task 0
