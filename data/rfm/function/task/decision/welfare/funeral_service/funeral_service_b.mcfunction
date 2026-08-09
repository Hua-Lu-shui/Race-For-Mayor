#执行民生决策任务的B方案并结算属性
execute if score @s decision_task matches 320 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 320 run scoreboard players add @s fame 1
execute if score @s decision_task matches 320 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 320 run tellraw @s {"text":"你选择了统一基础套餐并公开价格：民生 +4，名誉 +1，经济 -1","color":"yellow"}
execute if score @s decision_task matches 320 run scoreboard players set @s decision_task 0
