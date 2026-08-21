#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 116 run scoreboard players remove @s fame 6
execute if score @s decision_task matches 116 run scoreboard players add @s economy 4
execute if score @s decision_task matches 116 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 116 run tellraw @s [{"text":"你选择了保留旧形象只做修饰：","color":"green"},{"text":"名誉 -6","color":"aqua"},{"text":"，","color":"gray"},{"text":"经济 +4","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 +2","color":"red"}]
execute if score @s decision_task matches 116 run scoreboard players set @s decision_task 0
