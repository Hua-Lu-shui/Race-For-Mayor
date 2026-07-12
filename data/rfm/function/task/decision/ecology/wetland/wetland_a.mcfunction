execute if score @s decision_task matches 408 run scoreboard players add @s ecology 5
execute if score @s decision_task matches 408 run scoreboard players add @s fame 1
execute if score @s decision_task matches 408 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 408 run tellraw @s {"text":"你选择了划为永久保护区：生态 +5，名誉 +1，经济 -3","color":"yellow"}
execute if score @s decision_task matches 408 run scoreboard players set @s decision_task 0
