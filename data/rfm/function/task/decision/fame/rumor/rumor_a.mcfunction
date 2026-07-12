execute if score @s decision_task matches 105 run scoreboard players add @s fame 2
execute if score @s decision_task matches 105 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 105 run tellraw @s {"text":"你选择了公开反击造谣者：名誉 +2，民生 -1","color":"yellow"}
execute if score @s decision_task matches 105 run scoreboard players set @s decision_task 0
