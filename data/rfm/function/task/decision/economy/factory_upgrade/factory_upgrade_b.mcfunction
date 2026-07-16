#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 209 run scoreboard players add @s economy 2
execute if score @s decision_task matches 209 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 209 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 209 run tellraw @s {"text":"你选择了只补贴节能设备：经济 +2，生态 +2，民生 -1","color":"yellow"}
execute if score @s decision_task matches 209 run scoreboard players set @s decision_task 0
