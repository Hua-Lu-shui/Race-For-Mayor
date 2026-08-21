#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 406 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 406 run scoreboard players add @s economy 2
execute if score @s decision_task matches 406 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 406 run tellraw @s [{"text":"你选择了只做示范项目：","color":"green"},{"text":"生态 +2","color":"green"},{"text":"，","color":"gray"},{"text":"经济 +2","color":"yellow"},{"text":"，","color":"gray"},{"text":"名誉 -2","color":"aqua"}]
execute if score @s decision_task matches 406 run scoreboard players set @s decision_task 0
