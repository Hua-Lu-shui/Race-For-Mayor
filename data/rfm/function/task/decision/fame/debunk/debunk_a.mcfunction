#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 110 run scoreboard players add @s fame 8
execute if score @s decision_task matches 110 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 110 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 110 run tellraw @s [{"text":"你选择了召开发布会逐条反驳：","color":"red"},{"text":"名誉 +8","color":"aqua"},{"text":"，","color":"gray"},{"text":"经济 -2","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 -2","color":"red"}]
execute if score @s decision_task matches 110 run scoreboard players set @s decision_task 0
