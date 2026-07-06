execute if score @s decision_task matches 311 run scoreboard players add @s welfare 3
execute if score @s decision_task matches 311 run scoreboard players add @s fame 1
execute if score @s decision_task matches 311 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 311 run tellraw @s {"text":"你选择了严格限制夜间营业：民生 +3，名誉 +1，经济 -2","color":"yellow"}
scoreboard players set @s decision_task 0
