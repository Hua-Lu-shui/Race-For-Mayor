#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 319 run scoreboard players remove @s welfare 6
execute if score @s decision_task matches 319 run scoreboard players add @s economy 6
execute if score @s decision_task matches 319 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 319 run tellraw @s [{"translate":"rfm.text.9ff7fe9c4c46","color":"green"},{"translate":"rfm.text.bf455db6070a","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.5ee7110d02b1","color":"green"}]
execute if score @s decision_task matches 319 run scoreboard players set @s decision_task 0
