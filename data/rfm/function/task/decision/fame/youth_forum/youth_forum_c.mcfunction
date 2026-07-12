execute if score @s decision_task matches 111 run scoreboard players add @s fame 1
execute if score @s decision_task matches 111 run scoreboard players add @s economy 1
execute if score @s decision_task matches 111 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 111 run tellraw @s {"text":"你选择了只参加合影交流：名誉 +1，经济 +1，民生 -2","color":"yellow"}
execute if score @s decision_task matches 111 run scoreboard players set @s decision_task 0
