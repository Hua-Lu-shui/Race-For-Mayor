execute if score @s decision_task matches 210 run scoreboard players add @s welfare 3
execute if score @s decision_task matches 210 run scoreboard players add @s fame 1
execute if score @s decision_task matches 210 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 210 run tellraw @s {"text":"你选择了强制大幅降租：民生 +3，名誉 +1，经济 -4","color":"yellow"}
execute if score @s decision_task matches 210 run scoreboard players set @s decision_task 0
