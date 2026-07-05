execute if score @s decision_task matches 202 run scoreboard players add @s economy 5
execute if score @s decision_task matches 202 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 202 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 202 run tellraw @s {"text":"你选择了引进大型工业园：经济 +5，生态 -2，名誉 -1","color":"yellow"}
scoreboard players set @s decision_task 0