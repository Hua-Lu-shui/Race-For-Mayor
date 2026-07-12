execute if score @s decision_task matches 401 run scoreboard players add @s economy 2
execute if score @s decision_task matches 401 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 401 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 401 run tellraw @s {"text":"你选择了暂不处罚只警告：经济 +2，生态 -2，民生 -2","color":"yellow"}
execute if score @s decision_task matches 401 run scoreboard players set @s decision_task 0
