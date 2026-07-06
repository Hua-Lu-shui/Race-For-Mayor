execute if score @s decision_task matches 409 run scoreboard players add @s economy 1
execute if score @s decision_task matches 409 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 409 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 409 run tellraw @s {"text":"你选择了维持月度报告：经济 +1，生态 -1，名誉 -1","color":"yellow"}
scoreboard players set @s decision_task 0
