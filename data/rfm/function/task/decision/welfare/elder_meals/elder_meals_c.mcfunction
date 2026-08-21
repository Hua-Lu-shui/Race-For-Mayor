#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 310 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 310 run scoreboard players add @s economy 2
execute if score @s decision_task matches 310 run scoreboard players add @s fame 2
execute if score @s decision_task matches 310 run tellraw @s [{"text":"你选择了发放少量餐券：","color":"green"},{"text":"民生 +2","color":"red"},{"text":"，","color":"gray"},{"text":"经济 +2","color":"yellow"},{"text":"，","color":"gray"},{"text":"名誉 +2","color":"aqua"}]
execute if score @s decision_task matches 310 run scoreboard players set @s decision_task 0
