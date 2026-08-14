#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 208 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 208 run scoreboard players add @s fame 4
execute if score @s decision_task matches 208 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 208 run tellraw @s {"text":"你选择了全面投放旅游广告：经济 -2，名誉 +4，民生 -4","color":"yellow"}
execute if score @s decision_task matches 208 run scoreboard players set @s decision_task 0
