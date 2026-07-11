#公布当前单人行动玩家
execute as @a if score @s action_order = #current_action action_order if score @s action_role matches 1 run tellraw @a [{"text":"现在由行动玩家 ","color":"white"},{"selector":"@s","color":"gold"},{"text":" 执行任务。","color":"white"}]

#启动当前单人行动任务
execute as @a if score @s action_order = #current_action action_order if score @s action_role matches 1 if score @s action_task matches 1.. run function rfm:task/action/show_selected

#当前单人行动玩家超时未选择时，直接进入下一顺序
execute as @a if score @s action_order = #current_action action_order if score @s action_role matches 1 if score @s action_task matches 0 run function rfm:task/action/sequence/skip_current

#双人任务只由队长统一公布和启动一次
execute as @a if score @s action_order = #current_action action_order if score @s action_role matches 2 if score @s action_task matches 1.. run function rfm:task/action/duo/show_selected

#双人队长超时未选择时，整组任务跳过
execute as @a if score @s action_order = #current_action action_order if score @s action_role matches 2 if score @s action_task matches 0 run function rfm:task/action/sequence/skip_current
