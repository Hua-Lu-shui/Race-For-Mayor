#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 119 run scoreboard players add @s fame 4
execute if score @s decision_task matches 119 run scoreboard players add @s ecology 1
execute if score @s decision_task matches 119 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 119 run tellraw @s {"text":"你选择了直接委托建成永久地标：名誉 +4，生态 +1，经济 -2","color":"yellow"}
execute if score @s decision_task matches 119 run scoreboard players set @s decision_task 0
