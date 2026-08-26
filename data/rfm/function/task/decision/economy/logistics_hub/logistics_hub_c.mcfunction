#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 206 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 206 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 206 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 206 run tellraw @s [{"translate":"rfm.text.c36888125653","color":"green"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.5ee7110d02b1","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.72d780b63e29","color":"yellow"}]
execute if score @s decision_task matches 206 run scoreboard players set @s decision_task 0
