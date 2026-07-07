execute if score @s decision_task matches 412 run scoreboard players add @s economy 2
execute if score @s decision_task matches 412 run scoreboard players add @s ecology 1
execute if score @s decision_task matches 412 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 412 run tellraw @s {"text":"你选择了暂只做节能宣传：经济 +2，生态 +1，民生 -1","color":"yellow"}
scoreboard players set @s decision_task 0
