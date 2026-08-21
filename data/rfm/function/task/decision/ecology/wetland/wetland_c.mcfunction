#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 408 run scoreboard players add @s economy 6
execute if score @s decision_task matches 408 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 408 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 408 run tellraw @s [{"text":"你选择了允许低密度开发：","color":"green"},{"text":"经济 +6","color":"yellow"},{"text":"，","color":"gray"},{"text":"生态 -4","color":"green"},{"text":"，","color":"gray"},{"text":"名誉 -2","color":"aqua"}]
execute if score @s decision_task matches 408 run scoreboard players set @s decision_task 0
