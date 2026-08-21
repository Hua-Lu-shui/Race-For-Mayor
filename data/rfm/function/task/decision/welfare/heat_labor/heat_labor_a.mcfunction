#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 317 run scoreboard players add @s welfare 10
execute if score @s decision_task matches 317 run scoreboard players add @s fame 4
execute if score @s decision_task matches 317 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 317 run tellraw @s [{"text":"你选择了高温时段强制停工并补贴工资：","color":"red"},{"text":"民生 +10","color":"red"},{"text":"，","color":"gray"},{"text":"名誉 +4","color":"aqua"},{"text":"，","color":"gray"},{"text":"经济 -6","color":"yellow"}]
execute if score @s decision_task matches 317 run scoreboard players set @s decision_task 0
