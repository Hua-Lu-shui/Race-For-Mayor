execute if score @s decision_task matches 213 run scoreboard players add @s economy 5
execute if score @s decision_task matches 213 run scoreboard players add @s fame 1
execute if score @s decision_task matches 213 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 213 run tellraw @s {"text":"你选择了全力加入贸易通道：经济 +6，名誉 +1，生态 -2","color":"yellow"}
scoreboard players set @s decision_task 0
