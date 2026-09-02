execute if score @s decision_task matches 315 run scoreboard players add @s economy 4
execute if score @s decision_task matches 315 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 315 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 315 run tellraw @s [{"translate":"rfm.text.21076f55f6e8","color":"green"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 315 run scoreboard players set @s decision_task 0
