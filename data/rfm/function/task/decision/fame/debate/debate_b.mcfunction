execute if score @s decision_task matches 102 run scoreboard players add @s fame 2
execute if score @s decision_task matches 102 run scoreboard players add @s economy 1
execute if score @s decision_task matches 102 run tellraw @s {"text":"你选择了阐述自己的方案：名誉 +2，经济 +1","color":"yellow"}
execute if score @s decision_task matches 102 run scoreboard players set @s decision_task 0