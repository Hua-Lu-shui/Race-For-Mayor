#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 319 run scoreboard players remove @s welfare 3
execute if score @s decision_task matches 319 run scoreboard players add @s economy 3
execute if score @s decision_task matches 319 run scoreboard players add @s ecology 1
execute if score @s decision_task matches 319 run tellraw @s {"text":"你选择了维持现有开放时间：民生 -3，经济 +3，生态 +1","color":"yellow"}
execute if score @s decision_task matches 319 run scoreboard players set @s decision_task 0
