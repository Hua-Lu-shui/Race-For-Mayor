execute if score @s decision_task matches 305 run scoreboard players add @s economy 3
execute if score @s decision_task matches 305 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 305 run tellraw @s {"text":"你选择了家庭和社会组织承担：经济 +3，民生 -2","color":"yellow"}
scoreboard players set @s decision_task 0
