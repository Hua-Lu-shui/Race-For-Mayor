execute if score @s decision_task matches 101 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 101 run tellraw @s {"text":"你选择了回避尖锐话题：名誉 -1","color":"yellow"}
scoreboard players set @s decision_task 0