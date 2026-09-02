execute if score @s decision_task matches 401 run scoreboard players add @s economy 4
execute if score @s decision_task matches 401 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 401 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 401 run tellraw @s [{"translate":"rfm.text.06b0cd70b05d","color":"green"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.40e5da9b7fc0","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"}]
execute if score @s decision_task matches 401 run scoreboard players set @s decision_task 0
