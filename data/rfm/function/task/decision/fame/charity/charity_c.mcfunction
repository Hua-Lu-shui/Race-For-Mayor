#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 104 run scoreboard players add @s fame 1
execute if score @s decision_task matches 104 run tellraw @s {"text":"你选择了线上支持声明：名誉 +1","color":"yellow"}
execute if score @s decision_task matches 104 run scoreboard players set @s decision_task 0
