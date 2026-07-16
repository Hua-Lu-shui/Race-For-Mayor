#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 101 run scoreboard players add @s fame 3
execute if score @s decision_task matches 101 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 101 run tellraw @s {"text":"你选择了高调承诺改革：名誉 +3，经济 -1","color":"yellow"}
execute if score @s decision_task matches 101 run scoreboard players set @s decision_task 0
