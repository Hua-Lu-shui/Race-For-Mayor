#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 402 run scoreboard players add @s economy 1
execute if score @s decision_task matches 402 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 402 run tellraw @s {"text":"你选择了推迟工程加强巡查：经济 +1，生态 -2","color":"yellow"}
execute if score @s decision_task matches 402 run scoreboard players set @s decision_task 0
