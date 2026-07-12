execute if score @s decision_task matches 212 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 212 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 212 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 212 run tellraw @s {"text":"你选择了继续人工申报：民生 +2，经济 -1，名誉 -1","color":"yellow"}
execute if score @s decision_task matches 212 run scoreboard players set @s decision_task 0
