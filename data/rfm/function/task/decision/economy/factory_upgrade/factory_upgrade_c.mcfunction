#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 209 run scoreboard players add @s economy 6
execute if score @s decision_task matches 209 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 209 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 209 run tellraw @s [{"text":"你选择了不补贴只减税：","color":"green"},{"text":"经济 +6","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 -4","color":"red"},{"text":"，","color":"gray"},{"text":"生态 -2","color":"green"}]
execute if score @s decision_task matches 209 run scoreboard players set @s decision_task 0
