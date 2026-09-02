execute if score @s decision_task matches 202 run scoreboard players add @s economy 12
execute if score @s decision_task matches 202 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 202 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 202 run tellraw @s [{"translate":"rfm.text.7e304952065b","color":"red"},{"translate":"rfm.text.647b221c9c2e","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.40e5da9b7fc0","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 202 run scoreboard players set @s decision_task 0
