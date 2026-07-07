execute if score @s decision_task matches 403 run scoreboard players add @s ecology 3
execute if score @s decision_task matches 403 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 403 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 403 run tellraw @s {"text":"你选择了全部改造成城市公园：生态 +3，民生 +2，经济 -3","color":"yellow"}
scoreboard players set @s decision_task 0
