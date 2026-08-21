#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 417 run scoreboard players add @s ecology 10
execute if score @s decision_task matches 417 run scoreboard players add @s fame 2
execute if score @s decision_task matches 417 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 417 run tellraw @s [{"text":"你选择了封湖开展全面清除：","color":"red"},{"text":"生态 +10","color":"green"},{"text":"，","color":"gray"},{"text":"名誉 +2","color":"aqua"},{"text":"，","color":"gray"},{"text":"经济 -6","color":"yellow"}]
execute if score @s decision_task matches 417 run scoreboard players set @s decision_task 0
