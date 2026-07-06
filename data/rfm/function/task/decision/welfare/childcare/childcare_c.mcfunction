execute if score @s decision_task matches 307 run scoreboard players add @s economy 1
execute if score @s decision_task matches 307 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 307 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 307 run tellraw @s {"text":"你选择了鼓励企业自办：经济 +1，民生 +1，名誉 -1","color":"yellow"}
scoreboard players set @s decision_task 0
