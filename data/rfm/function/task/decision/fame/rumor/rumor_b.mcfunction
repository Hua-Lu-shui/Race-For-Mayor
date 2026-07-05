execute if score @s decision_task matches 105 run scoreboard players add @s fame 3
execute if score @s decision_task matches 105 run tellraw @s {"text":"你选择了发布证据并平静说明：名誉 +3","color":"yellow"}
scoreboard players set @s decision_task 0
