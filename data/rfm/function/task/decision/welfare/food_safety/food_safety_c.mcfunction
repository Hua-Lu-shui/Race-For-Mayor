execute if score @s decision_task matches 308 run scoreboard players add @s economy 1
execute if score @s decision_task matches 308 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 308 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 308 run tellraw @s {"text":"你选择了先宣传提醒：经济 +1，民生 -1，名誉 -1","color":"yellow"}
execute if score @s decision_task matches 308 run scoreboard players set @s decision_task 0
