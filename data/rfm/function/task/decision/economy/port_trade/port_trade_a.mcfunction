#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 213 run scoreboard players add @s economy 12
execute if score @s decision_task matches 213 run scoreboard players add @s fame 2
execute if score @s decision_task matches 213 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 213 run tellraw @s {"text":"你选择了全力加入贸易通道：经济 +12，名誉 +2，生态 -4","color":"yellow"}
execute if score @s decision_task matches 213 run scoreboard players set @s decision_task 0
