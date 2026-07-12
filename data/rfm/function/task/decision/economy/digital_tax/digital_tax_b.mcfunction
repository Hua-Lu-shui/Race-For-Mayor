execute if score @s decision_task matches 212 run scoreboard players add @s economy 3
execute if score @s decision_task matches 212 run scoreboard players add @s fame 1
execute if score @s decision_task matches 212 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 212 run tellraw @s {"text":"你选择了先对大商户试点：经济 +3，名誉 +1，民生 -1","color":"yellow"}
execute if score @s decision_task matches 212 run scoreboard players set @s decision_task 0
