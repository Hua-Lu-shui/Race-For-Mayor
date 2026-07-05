execute if score @s decision_task matches 103 run scoreboard players add @s economy 2
execute if score @s decision_task matches 103 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 103 run tellraw @s {"text":"你选择了维持项目推进：经济 +2，名誉 -2","color":"yellow"}
scoreboard players set @s decision_task 0