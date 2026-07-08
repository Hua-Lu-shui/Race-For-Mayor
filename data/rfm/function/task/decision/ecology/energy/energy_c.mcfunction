execute if score @s decision_task matches 405 run scoreboard players add @s economy 3
execute if score @s decision_task matches 405 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 405 run tellraw @s {"text":"你选择了继续使用现有能源系统：经济 +3，生态 -1","color":"yellow"}
scoreboard players set @s decision_task 0
