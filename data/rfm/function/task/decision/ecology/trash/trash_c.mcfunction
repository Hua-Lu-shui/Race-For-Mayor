execute if score @s decision_task matches 404 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 404 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 404 run tellraw @s {"text":"你选择了宣传暂不处罚：民生 +1，生态 -1","color":"yellow"}
scoreboard players set @s decision_task 0
