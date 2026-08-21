#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 219 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 219 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 219 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 219 run tellraw @s [{"text":"你选择了允许无力经营的店铺退场：","color":"green"},{"text":"经济 -6","color":"yellow"},{"text":"，","color":"gray"},{"text":"生态 +4","color":"green"},{"text":"，","color":"gray"},{"text":"民生 -2","color":"red"}]
execute if score @s decision_task matches 219 run scoreboard players set @s decision_task 0
