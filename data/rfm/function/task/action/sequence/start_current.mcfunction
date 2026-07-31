#确认当前顺序仍有在线的行动玩家，防止玩家离线后流程卡死
scoreboard players set #current_found action_order 0
execute as @a if score @s action_order = #current_action action_order if score @s action_role matches 1 run scoreboard players set #current_found action_order 1

#公布当前行动玩家
execute as @a if score @s action_order = #current_action action_order if score @s action_role matches 1 run tellraw @a [{"text":"现在由行动玩家 ","color":"white"},{"selector":"@s","color":"white"},{"text":" 执行任务。","color":"white"}]

#启动当前行动任务
execute as @a if score @s action_order = #current_action action_order if score @s action_role matches 1 if score @s action_task matches 1.. run function rfm:task/action/show_selected

#当前行动玩家超时未选择时，直接进入下一顺序
execute as @a if score @s action_order = #current_action action_order if score @s action_role matches 1 if score @s action_task matches 0 run function rfm:task/action/sequence/skip_current

#当前顺序的负责人已经离线时自动跳过
execute if score #current_found action_order matches 0 run function rfm:task/action/sequence/skip_current
