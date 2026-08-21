#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 102 run scoreboard players add @s fame 6
execute if score @s decision_task matches 102 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 102 run tellraw @s [{"text":"你选择了主动攻击对手漏洞：","color":"red"},{"text":"名誉 +6","color":"aqua"},{"text":"，","color":"gray"},{"text":"民生 -2","color":"red"}]
execute if score @s decision_task matches 102 run scoreboard players set @s decision_task 0
