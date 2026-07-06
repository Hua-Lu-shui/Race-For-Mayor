execute if score @s decision_task matches 213 run scoreboard players add @s economy 3
execute if score @s decision_task matches 213 run scoreboard players add @s fame 1
execute if score @s decision_task matches 213 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 213 run tellraw @s {"text":"你选择了先开放部分线路：经济 +3，名誉 +1，生态 -1","color":"yellow"}
scoreboard players set @s decision_task 0
