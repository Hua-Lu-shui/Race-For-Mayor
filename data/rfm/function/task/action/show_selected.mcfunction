#匹配行动任务编号
execute if score @s action_task matches 601 run function rfm:task/action/fame/fame_1_show
execute if score @s action_task matches 602 run function rfm:task/action/fame/fame_2_show
execute if score @s action_task matches 603 run function rfm:task/action/fame/fame_3_show
execute if score @s action_task matches 604 run function rfm:task/action/fame/fame_4_show
execute if score @s action_task matches 605 run function rfm:task/action/fame/fame_5_show

execute if score @s action_task matches 701 run function rfm:task/action/economy/economy_1_show
execute if score @s action_task matches 702 run function rfm:task/action/economy/economy_2_show
execute if score @s action_task matches 703 run function rfm:task/action/economy/economy_3_show
execute if score @s action_task matches 704 run function rfm:task/action/economy/economy_4_show
execute if score @s action_task matches 705 run function rfm:task/action/economy/economy_5_show

execute if score @s action_task matches 801 run function rfm:task/action/welfare/welfare_1_show
execute if score @s action_task matches 802 run function rfm:task/action/welfare/welfare_2_show
execute if score @s action_task matches 803 run function rfm:task/action/welfare/welfare_3_show
execute if score @s action_task matches 804 run function rfm:task/action/welfare/welfare_4_show
execute if score @s action_task matches 805 run function rfm:task/action/welfare/welfare_5_show

execute if score @s action_task matches 901 run function rfm:task/action/ecology/ecology_1_show
execute if score @s action_task matches 902 run function rfm:task/action/ecology/ecology_2_show
execute if score @s action_task matches 903 run function rfm:task/action/ecology/ecology_3_show
execute if score @s action_task matches 904 run function rfm:task/action/ecology/ecology_4_show
execute if score @s action_task matches 905 run function rfm:task/action/ecology/ecology_5_show

execute if score @s action_task matches 0 run tellraw @a [{"text":"本轮行动玩家 ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" 没有在倒计时内选择行动方向。","color":"gray"}]
