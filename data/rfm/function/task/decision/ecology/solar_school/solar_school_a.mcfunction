execute if score @s decision_task matches 412 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 412 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 412 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 412 run tellraw @s {"text":"你选择了全市学校铺设光伏：生态 +2，民生 +2，经济 -3","color":"yellow"}
scoreboard players set @s decision_task 0
