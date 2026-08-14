#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 219 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 219 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 219 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 219 run tellraw @s {"text":"你选择了允许无力经营的店铺退场：经济 -6，生态 +4，民生 -2","color":"yellow"}
execute if score @s decision_task matches 219 run scoreboard players set @s decision_task 0
