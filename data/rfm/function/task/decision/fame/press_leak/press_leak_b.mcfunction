#执行名誉决策任务的B方案并结算属性
execute if score @s decision_task matches 112 run scoreboard players add @s fame 2
execute if score @s decision_task matches 112 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 112 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 112 run tellraw @s {"text":"你选择了修订文件后再说明：名誉 +2，民生 +1，经济 -1","color":"yellow"}
execute if score @s decision_task matches 112 run scoreboard players set @s decision_task 0
