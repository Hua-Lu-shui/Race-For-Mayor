#执行名誉决策任务的B方案并结算属性
execute if score @s decision_task matches 105 run scoreboard players add @s fame 6
execute if score @s decision_task matches 105 run tellraw @s [{"translate":"rfm.text.095bccbfe921","color":"aqua"},{"translate":"rfm.text.546e37949bb5","color":"aqua"}]
execute if score @s decision_task matches 105 run scoreboard players set @s decision_task 0
