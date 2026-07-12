execute if score @s decision_task matches 211 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 211 run scoreboard players add @s fame 5
execute if score @s decision_task matches 211 run scoreboard players remove @s welfare 3
execute if score @s decision_task matches 211 run tellraw @s {"text":"你选择了立即启动建设：经济 -2，名誉 +5，民生 -3","color":"yellow"}
execute if score @s decision_task matches 211 run scoreboard players set @s decision_task 0
