execute if score @s decision_task matches 107 run scoreboard players add @s fame 2
execute if score @s decision_task matches 107 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 107 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 107 run tellraw @s {"text":"你选择了解释原因并公布时间表：名誉 +2，民生 +1，经济 -1","color":"yellow"}
scoreboard players set @s decision_task 0
