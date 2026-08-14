#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 412 run scoreboard players add @s economy 4
execute if score @s decision_task matches 412 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 412 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 412 run tellraw @s {"text":"你选择了暂只做节能宣传：经济 +4，生态 +2，民生 -2","color":"yellow"}
execute if score @s decision_task matches 412 run scoreboard players set @s decision_task 0
