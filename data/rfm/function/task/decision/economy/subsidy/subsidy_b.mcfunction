#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 203 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 203 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 203 run tellraw @s [{"translate":"rfm.text.fd2c88b4a1fe","color":"aqua"},{"translate":"rfm.text.72d780b63e29","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"}]
execute if score @s decision_task matches 203 run scoreboard players set @s decision_task 0
