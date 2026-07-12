execute if score @s decision_task matches 112 run scoreboard players add @s economy 1
execute if score @s decision_task matches 112 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 112 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 112 run tellraw @s {"text":"你选择了追查泄露源头优先：经济 +1，名誉 -2，民生 -1","color":"yellow"}
execute if score @s decision_task matches 112 run scoreboard players set @s decision_task 0
