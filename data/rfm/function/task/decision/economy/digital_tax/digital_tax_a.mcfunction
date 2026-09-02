execute if score @s decision_task matches 212 run scoreboard players add @s economy 12
execute if score @s decision_task matches 212 run scoreboard players add @s fame 2
execute if score @s decision_task matches 212 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 212 run tellraw @s [{"translate":"rfm.text.724b03115cec","color":"red"},{"translate":"rfm.text.647b221c9c2e","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"}]
execute if score @s decision_task matches 212 run scoreboard players set @s decision_task 0
