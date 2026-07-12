execute if score @s decision_task matches 203 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 203 run scoreboard players add @s economy 3
execute if score @s decision_task matches 203 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 203 run tellraw @s {"text":"你选择了控制补贴支出：名誉 -1，经济 +3，民生 -1","color":"yellow"}
execute if score @s decision_task matches 203 run scoreboard players set @s decision_task 0