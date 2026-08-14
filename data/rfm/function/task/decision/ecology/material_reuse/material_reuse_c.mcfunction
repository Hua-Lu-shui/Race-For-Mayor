#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 420 run scoreboard players remove @s ecology 6
execute if score @s decision_task matches 420 run scoreboard players add @s economy 6
execute if score @s decision_task matches 420 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 420 run tellraw @s {"text":"你选择了继续由承包商自行处理：生态 -6，经济 +6，民生 +2","color":"yellow"}
execute if score @s decision_task matches 420 run scoreboard players set @s decision_task 0
