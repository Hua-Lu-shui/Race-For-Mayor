execute if score @s decision_task matches 201 run scoreboard players add @s economy 6
execute if score @s decision_task matches 201 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 201 run tellraw @s [{"translate":"rfm.text.89f8e64ede55","color":"red"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 201 run scoreboard players set @s decision_task 0
