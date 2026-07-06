execute if score @s decision_task matches 214 run scoreboard players add @s economy 3
execute if score @s decision_task matches 214 run scoreboard players add @s welfare 3
execute if score @s decision_task matches 214 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 214 run tellraw @s {"text":"你选择了免费大规模培训：经济 +3，民生 +3，名誉 -1","color":"yellow"}
scoreboard players set @s decision_task 0
