#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 120 run scoreboard players add @s fame 10
execute if score @s decision_task matches 120 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 120 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 120 run tellraw @s [{"text":"你选择了立即撤销并公开除名：","color":"red"},{"text":"名誉 +10","color":"aqua"},{"text":"，","color":"gray"},{"text":"民生 +4","color":"red"},{"text":"，","color":"gray"},{"text":"经济 -6","color":"yellow"}]
execute if score @s decision_task matches 120 run scoreboard players set @s decision_task 0
