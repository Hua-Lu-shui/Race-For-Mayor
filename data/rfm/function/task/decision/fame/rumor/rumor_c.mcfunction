execute if score @s decision_task matches 105 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 105 run tellraw @s {"text":"你选择了暂时不回应：名誉 -2","color":"yellow"}
scoreboard players set @s decision_task 0