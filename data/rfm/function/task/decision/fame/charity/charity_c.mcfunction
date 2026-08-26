#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 104 run scoreboard players add @s fame 2
execute if score @s decision_task matches 104 run tellraw @s [{"translate":"rfm.text.a7edb965637c","color":"green"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"}]
execute if score @s decision_task matches 104 run scoreboard players set @s decision_task 0
