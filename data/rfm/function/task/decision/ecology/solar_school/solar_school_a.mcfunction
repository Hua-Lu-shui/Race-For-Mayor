#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 412 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 412 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 412 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 412 run tellraw @s [{"translate":"rfm.text.61340e7c3671","color":"red"},{"translate":"rfm.text.643208335c88","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"}]
execute if score @s decision_task matches 412 run scoreboard players set @s decision_task 0
