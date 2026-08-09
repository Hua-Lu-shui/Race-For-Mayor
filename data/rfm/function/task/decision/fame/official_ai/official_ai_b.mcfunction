#执行名誉决策任务的B方案并结算属性
execute if score @s decision_task matches 118 run scoreboard players add @s fame 2
execute if score @s decision_task matches 118 run scoreboard players add @s economy 1
execute if score @s decision_task matches 118 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 118 run tellraw @s {"text":"你选择了仅试运行常见问答：名誉 +2，经济 +1，民生 -1","color":"yellow"}
execute if score @s decision_task matches 118 run scoreboard players set @s decision_task 0
