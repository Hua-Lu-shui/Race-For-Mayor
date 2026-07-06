execute if score @s decision_task matches 210 run scoreboard players add @s economy 2
execute if score @s decision_task matches 210 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 210 run scoreboard players add @s fame 1
execute if score @s decision_task matches 210 run tellraw @s {"text":"你选择了设置阶梯租金：经济 +2，民生 +2，名誉 +1","color":"yellow"}
scoreboard players set @s decision_task 0
