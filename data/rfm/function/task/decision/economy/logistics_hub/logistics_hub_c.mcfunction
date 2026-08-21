#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 206 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 206 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 206 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 206 run tellraw @s [{"text":"你选择了暂停审批重新选址：","color":"green"},{"text":"民生 +4","color":"red"},{"text":"，","color":"gray"},{"text":"生态 +2","color":"green"},{"text":"，","color":"gray"},{"text":"经济 -4","color":"yellow"}]
execute if score @s decision_task matches 206 run scoreboard players set @s decision_task 0
