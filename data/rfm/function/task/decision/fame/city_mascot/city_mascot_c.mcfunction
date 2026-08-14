#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 116 run scoreboard players remove @s fame 6
execute if score @s decision_task matches 116 run scoreboard players add @s economy 4
execute if score @s decision_task matches 116 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 116 run tellraw @s {"text":"你选择了保留旧形象只做修饰：名誉 -6，经济 +4，民生 +2","color":"yellow"}
execute if score @s decision_task matches 116 run scoreboard players set @s decision_task 0
