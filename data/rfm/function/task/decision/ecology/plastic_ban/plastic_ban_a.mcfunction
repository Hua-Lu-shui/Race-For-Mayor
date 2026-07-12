execute if score @s decision_task matches 411 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 411 run scoreboard players add @s fame 1
execute if score @s decision_task matches 411 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 411 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 411 run tellraw @s {"text":"你选择了立即全面禁塑：生态 +4，名誉 +1，经济 -2，民生 -2","color":"yellow"}
execute if score @s decision_task matches 411 run scoreboard players set @s decision_task 0
