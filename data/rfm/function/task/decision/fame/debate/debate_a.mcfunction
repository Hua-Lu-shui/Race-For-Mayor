execute if score @s decision_task matches 102 run scoreboard players add @s fame 3
execute if score @s decision_task matches 102 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 102 run tellraw @s {"text":"你选择了主动攻击对手漏洞：名誉 +3，民生 -1","color":"yellow"}
scoreboard players set @s decision_task 0