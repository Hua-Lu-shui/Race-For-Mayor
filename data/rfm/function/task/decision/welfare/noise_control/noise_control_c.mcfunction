execute if score @s decision_task matches 311 run scoreboard players add @s economy 6
execute if score @s decision_task matches 311 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 311 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 311 run tellraw @s [{"translate":"rfm.text.2604feec2cd5","color":"green"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 311 run scoreboard players set @s decision_task 0
