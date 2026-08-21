#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 202 run scoreboard players add @s fame 2
execute if score @s decision_task matches 202 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 202 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 202 run tellraw @s [{"text":"你选择了暂缓大型招商：","color":"green"},{"text":"名誉 +2","color":"aqua"},{"text":"，","color":"gray"},{"text":"生态 +2","color":"green"},{"text":"，","color":"gray"},{"text":"经济 -2","color":"yellow"}]
execute if score @s decision_task matches 202 run scoreboard players set @s decision_task 0
