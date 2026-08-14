#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 203 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 203 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 203 run tellraw @s {"text":"你选择了补贴中小企业岗位：经济 -4，民生 +4","color":"yellow"}
execute if score @s decision_task matches 203 run scoreboard players set @s decision_task 0
