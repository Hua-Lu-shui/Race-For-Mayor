execute if score @s decision_task matches 211 run scoreboard players add @s economy 5
execute if score @s decision_task matches 211 run scoreboard players add @s fame 2
execute if score @s decision_task matches 211 run scoreboard players remove @s welfare 3
execute if score @s decision_task matches 211 run tellraw @s {"text":"你选择了立即启动建设：经济 +5，名誉 +2，民生 -3","color":"yellow"}
scoreboard players set @s decision_task 0
