#执行名誉决策任务的B方案并结算属性
execute if score @s decision_task matches 105 run scoreboard players add @s fame 6
execute if score @s decision_task matches 105 run tellraw @s {"text":"你选择了发布证据并平静说明：名誉 +6","color":"yellow"}
execute if score @s decision_task matches 105 run scoreboard players set @s decision_task 0
