#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 102 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 102 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 102 run tellraw @s [{"translate":"rfm.text.854d76e58842","color":"green"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 102 run scoreboard players set @s decision_task 0
