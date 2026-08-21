#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 101 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 101 run tellraw @s [{"text":"你选择了回避尖锐话题：","color":"green"},{"text":"名誉 -2","color":"aqua"}]
execute if score @s decision_task matches 101 run scoreboard players set @s decision_task 0
