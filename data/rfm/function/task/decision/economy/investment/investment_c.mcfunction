#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 202 run scoreboard players add @s fame 1
execute if score @s decision_task matches 202 run scoreboard players add @s ecology 1
execute if score @s decision_task matches 202 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 202 run tellraw @s {"text":"你选择了暂缓大型招商：名誉 +1，生态 +1，经济 -1","color":"yellow"}
execute if score @s decision_task matches 202 run scoreboard players set @s decision_task 0
