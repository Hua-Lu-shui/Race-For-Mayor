#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 105 run scoreboard players remove @s fame 4
execute if score @s decision_task matches 105 run tellraw @s [{"translate":"rfm.text.8fd63f34836f","color":"green"},{"translate":"rfm.text.87ea5bdc6ed8","color":"aqua"}]
execute if score @s decision_task matches 105 run scoreboard players set @s decision_task 0
