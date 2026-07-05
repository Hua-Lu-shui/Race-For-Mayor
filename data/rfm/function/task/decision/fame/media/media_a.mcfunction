execute if score @s decision_task matches 101 run scoreboard players add @s fame 3
execute if score @s decision_task matches 101 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 101 run tellraw @s {"text":"你选择了高调承诺改革：名誉 +3，经济 -1","color":"yellow"}
scoreboard players set @s decision_task 0