#匹配行动任务编号
execute if score @s action_task matches 1101 run function rfm:task/action/fame/fame_1_show
execute if score @s action_task matches 1102 run function rfm:task/action/fame/fame_2_show
execute if score @s action_task matches 1103 run function rfm:task/action/fame/fame_3_show
execute if score @s action_task matches 1104 run function rfm:task/action/fame/fame_4_show
execute if score @s action_task matches 1105 run function rfm:task/action/fame/fame_5_show

execute if score @s action_task matches 1201 run function rfm:task/action/economy/economy_1_show
execute if score @s action_task matches 1202 run function rfm:task/action/economy/economy_2_show
execute if score @s action_task matches 1203 run function rfm:task/action/economy/economy_3_show
execute if score @s action_task matches 1204 run function rfm:task/action/economy/economy_4_show
execute if score @s action_task matches 1205 run function rfm:task/action/economy/economy_5_show

execute if score @s action_task matches 1301 run function rfm:task/action/welfare/welfare_1_show
execute if score @s action_task matches 1302 run function rfm:task/action/welfare/welfare_2_show
execute if score @s action_task matches 1303 run function rfm:task/action/welfare/welfare_3_show
execute if score @s action_task matches 1304 run function rfm:task/action/welfare/welfare_4_show
execute if score @s action_task matches 1305 run function rfm:task/action/welfare/welfare_5_show

execute if score @s action_task matches 1401 run function rfm:task/action/ecology/ecology_1_show
execute if score @s action_task matches 1402 run function rfm:task/action/ecology/ecology_2_show
execute if score @s action_task matches 1403 run function rfm:task/action/ecology/ecology_3_show
execute if score @s action_task matches 1404 run function rfm:task/action/ecology/ecology_4_show
execute if score @s action_task matches 1405 run function rfm:task/action/ecology/ecology_5_show

execute if score @s action_task matches 0 run tellraw @a [{"text":"本轮行动玩家 ","color":"gray"},{"selector":"@s","color":"gold"},{"text":" 没有在倒计时内选择行动方向。","color":"gray"}]
