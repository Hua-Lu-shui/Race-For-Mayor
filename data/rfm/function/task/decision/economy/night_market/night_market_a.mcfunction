execute if score @s decision_task matches 205 run scoreboard players add @s economy 5
execute if score @s decision_task matches 205 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 205 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 205 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 205 run tellraw @s {"text":"你选择了全面开放大型夜市：经济 +5，民生 +1，生态 -2，名誉 -1","color":"yellow"}
scoreboard players set @s decision_task 0