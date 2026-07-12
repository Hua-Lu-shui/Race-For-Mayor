execute if score @s decision_task matches 208 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 208 run scoreboard players add @s fame 2
execute if score @s decision_task matches 208 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 208 run tellraw @s {"text":"你选择了全面投放旅游广告：经济 -1，名誉 +2，民生 -2","color":"yellow"}
execute if score @s decision_task matches 208 run scoreboard players set @s decision_task 0
