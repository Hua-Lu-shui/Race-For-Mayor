#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 403 run scoreboard players add @s economy 6
execute if score @s decision_task matches 403 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 403 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 403 run tellraw @s [{"translate":"rfm.text.2e99b60a208f","color":"green"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.08597c9fb827","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 403 run scoreboard players set @s decision_task 0
