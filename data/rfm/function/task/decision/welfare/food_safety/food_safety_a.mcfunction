execute if score @s decision_task matches 308 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 308 run scoreboard players add @s fame 1
execute if score @s decision_task matches 308 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 308 run tellraw @s {"text":"你选择了全区严格整治：民生 +4，名誉 +1，经济 -2","color":"yellow"}
scoreboard players set @s decision_task 0
