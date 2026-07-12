execute if score @s decision_task matches 209 run scoreboard players add @s economy 3
execute if score @s decision_task matches 209 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 209 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 209 run tellraw @s {"text":"你选择了不补贴只减税：经济 +3，民生 -2，生态 -1","color":"yellow"}
execute if score @s decision_task matches 209 run scoreboard players set @s decision_task 0
