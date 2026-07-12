execute if score @s decision_task matches 203 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 203 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 203 run tellraw @s {"text":"你选择了补贴中小企业岗位：经济 -2，民生 +2","color":"yellow"}
execute if score @s decision_task matches 203 run scoreboard players set @s decision_task 0
