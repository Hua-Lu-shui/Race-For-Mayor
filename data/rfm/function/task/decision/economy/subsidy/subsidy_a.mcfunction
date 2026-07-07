execute if score @s decision_task matches 203 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 203 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 203 run scoreboard players add @s fame 2
execute if score @s decision_task matches 203 run tellraw @s {"text":"你选择了大额补贴重点企业：经济 -3，民生 +4，名誉 +2","color":"yellow"}
scoreboard players set @s decision_task 0
