#执行名誉决策任务的B方案并结算属性
execute if score @s decision_task matches 104 run scoreboard players add @s fame 2
execute if score @s decision_task matches 104 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 104 run tellraw @s {"text":"你选择了社区志愿服务：名誉 +2，民生 +1","color":"yellow"}
execute if score @s decision_task matches 104 run scoreboard players set @s decision_task 0
