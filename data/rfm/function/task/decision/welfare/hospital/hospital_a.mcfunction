#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 301 run scoreboard players add @s welfare 8
execute if score @s decision_task matches 301 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 301 run scoreboard players add @s fame 2
execute if score @s decision_task matches 301 run tellraw @s [{"text":"你选择了新建多所社区医院：","color":"red"},{"text":"民生 +8","color":"red"},{"text":"，","color":"gray"},{"text":"经济 -6","color":"yellow"},{"text":"，","color":"gray"},{"text":"名誉 +2","color":"aqua"}]
execute if score @s decision_task matches 301 run scoreboard players set @s decision_task 0
