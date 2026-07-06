execute if score @s decision_task matches 108 run scoreboard players add @s fame 4
execute if score @s decision_task matches 108 run scoreboard players add @s economy 2
execute if score @s decision_task matches 108 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 108 run tellraw @s {"text":"你选择了高调同台造势：名誉 +4，经济 +2，民生 -2","color":"yellow"}
scoreboard players set @s decision_task 0
