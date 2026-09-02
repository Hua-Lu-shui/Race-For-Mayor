execute if score @s decision_task matches 302 run scoreboard players add @s economy 4
execute if score @s decision_task matches 302 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 302 run tellraw @s [{"translate":"rfm.text.91e0517d9bd8","color":"green"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"}]
execute if score @s decision_task matches 302 run scoreboard players set @s decision_task 0
