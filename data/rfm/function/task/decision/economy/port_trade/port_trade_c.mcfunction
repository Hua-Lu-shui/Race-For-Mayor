execute if score @s decision_task matches 213 run scoreboard players add @s economy 2
execute if score @s decision_task matches 213 run scoreboard players add @s ecology 1
execute if score @s decision_task matches 213 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 213 run tellraw @s {"text":"你选择了只做小规模合作：经济 +2，生态 +1，名誉 -1","color":"yellow"}
execute if score @s decision_task matches 213 run scoreboard players set @s decision_task 0
