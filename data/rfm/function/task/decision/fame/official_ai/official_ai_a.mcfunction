execute if score @s decision_task matches 118 run scoreboard players add @s fame 8
execute if score @s decision_task matches 118 run scoreboard players add @s economy 4
execute if score @s decision_task matches 118 run scoreboard players remove @s welfare 6
execute if score @s decision_task matches 118 run tellraw @s [{"translate":"rfm.text.64db0438a12e","color":"red"},{"translate":"rfm.text.d5f8f0055544","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.bf455db6070a","color":"red"}]
execute if score @s decision_task matches 118 run scoreboard players set @s decision_task 0
