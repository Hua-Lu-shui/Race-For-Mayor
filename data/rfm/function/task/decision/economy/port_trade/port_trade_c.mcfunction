#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 213 run scoreboard players add @s economy 4
execute if score @s decision_task matches 213 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 213 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 213 run tellraw @s {"text":"你选择了只做小规模合作：经济 +4，生态 +2，名誉 -2","color":"yellow"}
execute if score @s decision_task matches 213 run scoreboard players set @s decision_task 0
