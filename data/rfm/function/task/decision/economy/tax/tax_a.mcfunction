execute if score @s decision_task matches 201 run scoreboard players add @s economy 3
execute if score @s decision_task matches 201 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 201 run tellraw @s {"text":"你选择了增税：经济 +3，名誉 -1","color":"yellow"}
execute if score @s decision_task matches 201 run scoreboard players set @s decision_task 0