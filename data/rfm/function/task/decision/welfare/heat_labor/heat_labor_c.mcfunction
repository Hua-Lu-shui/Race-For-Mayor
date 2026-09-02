execute if score @s decision_task matches 317 run scoreboard players remove @s welfare 6
execute if score @s decision_task matches 317 run scoreboard players add @s economy 4
execute if score @s decision_task matches 317 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 317 run tellraw @s [{"translate":"rfm.text.b6aad298b06a","color":"green"},{"translate":"rfm.text.bf455db6070a","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 317 run scoreboard players set @s decision_task 0
