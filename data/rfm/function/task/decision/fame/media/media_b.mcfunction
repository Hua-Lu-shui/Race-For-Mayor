execute if score @s decision_task matches 101 run scoreboard players add @s fame 2
execute if score @s decision_task matches 101 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 101 run tellraw @s {"text":"你选择了稳健回应问题：名誉 +2，民生 +1","color":"yellow"}
scoreboard players set @s decision_task 0