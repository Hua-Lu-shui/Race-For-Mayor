#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 106 run scoreboard players add @s fame 8
execute if score @s decision_task matches 106 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 106 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 106 run tellraw @s [{"translate":"rfm.text.7f8ef12407a7","color":"red"},{"translate":"rfm.text.d5f8f0055544","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"}]
execute if score @s decision_task matches 106 run scoreboard players set @s decision_task 0
