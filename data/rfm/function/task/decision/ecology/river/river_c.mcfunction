#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 402 run scoreboard players add @s economy 2
execute if score @s decision_task matches 402 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 402 run tellraw @s [{"text":"你选择了推迟工程加强巡查：","color":"green"},{"text":"经济 +2","color":"yellow"},{"text":"，","color":"gray"},{"text":"生态 -4","color":"green"}]
execute if score @s decision_task matches 402 run scoreboard players set @s decision_task 0
