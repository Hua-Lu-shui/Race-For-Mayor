#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 220 run scoreboard players add @s economy 2
execute if score @s decision_task matches 220 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 220 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 220 run tellraw @s {"text":"你选择了周末开放小型创意市集：经济 +2，民生 +1，生态 -1","color":"yellow"}
execute if score @s decision_task matches 220 run scoreboard players set @s decision_task 0
