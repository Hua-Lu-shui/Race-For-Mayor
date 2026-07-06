execute if score @s decision_task matches 408 run scoreboard players add @s economy 3
execute if score @s decision_task matches 408 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 408 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 408 run tellraw @s {"text":"你选择了允许低密度开发：经济 +3，生态 -2，名誉 -1","color":"yellow"}
scoreboard players set @s decision_task 0
