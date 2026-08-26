#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 101 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 101 run tellraw @s [{"translate":"rfm.text.8b251c315f3f","color":"green"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 101 run scoreboard players set @s decision_task 0
