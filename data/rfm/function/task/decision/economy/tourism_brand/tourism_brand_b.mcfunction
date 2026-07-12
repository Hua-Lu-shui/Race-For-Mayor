execute if score @s decision_task matches 208 run scoreboard players add @s economy 2
execute if score @s decision_task matches 208 run scoreboard players add @s fame 1
execute if score @s decision_task matches 208 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 208 run tellraw @s {"text":"你选择了主推周末短途游：经济 +2，名誉 +1，民生 -1","color":"yellow"}
execute if score @s decision_task matches 208 run scoreboard players set @s decision_task 0
