#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 119 run scoreboard players add @s fame 8
execute if score @s decision_task matches 119 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 119 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 119 run tellraw @s [{"text":"你选择了直接委托建成永久地标：","color":"red"},{"text":"名誉 +8","color":"aqua"},{"text":"，","color":"gray"},{"text":"生态 +2","color":"green"},{"text":"，","color":"gray"},{"text":"经济 -4","color":"yellow"}]
execute if score @s decision_task matches 119 run scoreboard players set @s decision_task 0
