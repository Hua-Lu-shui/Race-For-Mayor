#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 305 run scoreboard players add @s economy 6
execute if score @s decision_task matches 305 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 305 run tellraw @s [{"translate":"rfm.text.cb3b5725dbb4","color":"green"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"}]
execute if score @s decision_task matches 305 run scoreboard players set @s decision_task 0
