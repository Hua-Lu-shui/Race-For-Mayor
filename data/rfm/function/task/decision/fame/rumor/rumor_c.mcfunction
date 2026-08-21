#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 105 run scoreboard players remove @s fame 4
execute if score @s decision_task matches 105 run tellraw @s [{"text":"你选择了暂时不回应：","color":"green"},{"text":"名誉 -4","color":"aqua"}]
execute if score @s decision_task matches 105 run scoreboard players set @s decision_task 0
