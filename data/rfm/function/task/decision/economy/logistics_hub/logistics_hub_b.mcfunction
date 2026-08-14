#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 206 run scoreboard players add @s economy 4
execute if score @s decision_task matches 206 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 206 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 206 run tellraw @s {"text":"你选择了附带交通降噪条件：经济 +4，民生 +2，生态 -2","color":"yellow"}
execute if score @s decision_task matches 206 run scoreboard players set @s decision_task 0
