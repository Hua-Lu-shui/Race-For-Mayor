execute if score @s decision_task matches 102 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 102 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 102 run tellraw @s {"text":"你选择了避免正面交锋：民生 +2，名誉 -1","color":"yellow"}
scoreboard players set @s decision_task 0