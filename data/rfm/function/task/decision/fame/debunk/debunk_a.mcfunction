execute if score @s decision_task matches 110 run scoreboard players add @s fame 4
execute if score @s decision_task matches 110 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 110 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 110 run tellraw @s {"text":"你选择了召开发布会逐条反驳：名誉 +4，经济 -1，民生 -1","color":"yellow"}
scoreboard players set @s decision_task 0
