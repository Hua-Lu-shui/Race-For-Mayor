#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 404 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 404 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 404 run tellraw @s [{"text":"你选择了宣传暂不处罚：","color":"green"},{"text":"民生 +2","color":"red"},{"text":"，","color":"gray"},{"text":"生态 -4","color":"green"}]
execute if score @s decision_task matches 404 run scoreboard players set @s decision_task 0
