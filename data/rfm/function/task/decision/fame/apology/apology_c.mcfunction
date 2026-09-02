execute if score @s decision_task matches 107 run scoreboard players add @s economy 2
execute if score @s decision_task matches 107 run scoreboard players remove @s fame 4
execute if score @s decision_task matches 107 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 107 run tellraw @s [{"translate":"rfm.text.6a4e5ea16c28","color":"green"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.87ea5bdc6ed8","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"}]
execute if score @s decision_task matches 107 run scoreboard players set @s decision_task 0
