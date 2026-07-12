execute if score @s decision_task matches 205 run scoreboard players add @s fame 1
execute if score @s decision_task matches 205 run scoreboard players add @s ecology 3
execute if score @s decision_task matches 205 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 205 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 205 run tellraw @s {"text":"你选择了严格限制流动摊贩：名誉 +1，生态 +3，经济 -1，民生 -1","color":"yellow"}
execute if score @s decision_task matches 205 run scoreboard players set @s decision_task 0