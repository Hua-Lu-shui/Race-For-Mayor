execute if score @s decision_task matches 310 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 310 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 310 run scoreboard players add @s fame 1
execute if score @s decision_task matches 310 run tellraw @s {"text":"你选择了发放少量餐券：民生 +1，经济 -1，名誉 +1","color":"yellow"}
scoreboard players set @s decision_task 0
