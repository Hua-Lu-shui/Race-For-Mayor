#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 414 run scoreboard players add @s economy 2
execute if score @s decision_task matches 414 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 414 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 414 run tellraw @s [{"text":"你选择了只接受举报处理：","color":"green"},{"text":"经济 +2","color":"yellow"},{"text":"，","color":"gray"},{"text":"生态 -2","color":"green"},{"text":"，","color":"gray"},{"text":"名誉 -2","color":"aqua"}]
execute if score @s decision_task matches 414 run scoreboard players set @s decision_task 0
