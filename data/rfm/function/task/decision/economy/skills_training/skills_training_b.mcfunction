execute if score @s decision_task matches 214 run scoreboard players add @s economy 1
execute if score @s decision_task matches 214 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 214 run scoreboard players add @s fame 1
execute if score @s decision_task matches 214 run tellraw @s {"text":"你选择了企业和政府分担：经济 +1，民生 +1，名誉 +1","color":"yellow"}
scoreboard players set @s decision_task 0
