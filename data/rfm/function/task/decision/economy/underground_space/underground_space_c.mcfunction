#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 220 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 220 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 220 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 220 run tellraw @s [{"translate":"rfm.text.0f25f6b41c46","color":"green"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.643208335c88","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"}]
execute if score @s decision_task matches 220 run scoreboard players set @s decision_task 0
