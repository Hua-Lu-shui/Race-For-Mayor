execute if score @s decision_task matches 109 run scoreboard players add @s economy 1
execute if score @s decision_task matches 109 run scoreboard players add @s fame 1
execute if score @s decision_task matches 109 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 109 run tellraw @s {"text":"你选择了只发布线上报告：经济 +1，名誉 +1，民生 -1","color":"yellow"}
scoreboard players set @s decision_task 0
