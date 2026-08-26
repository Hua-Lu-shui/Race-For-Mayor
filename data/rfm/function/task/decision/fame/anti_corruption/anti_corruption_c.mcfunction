#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 103 run scoreboard players add @s economy 4
execute if score @s decision_task matches 103 run scoreboard players remove @s fame 4
execute if score @s decision_task matches 103 run tellraw @s [{"translate":"rfm.text.728841a36ef0","color":"green"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.87ea5bdc6ed8","color":"aqua"}]
execute if score @s decision_task matches 103 run scoreboard players set @s decision_task 0
