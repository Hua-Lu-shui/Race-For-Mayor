#匹配行动任务编号
execute if score @s action_task matches 601 run function rfm:task/action/fame/fame_1/show
execute if score @s action_task matches 602 run function rfm:task/action/fame/fame_2/show
execute if score @s action_task matches 603 run function rfm:task/action/fame/fame_3/show
execute if score @s action_task matches 604 run function rfm:task/action/fame/fame_4/show
execute if score @s action_task matches 605 run function rfm:task/action/fame/fame_5/show

execute if score @s action_task matches 701 run function rfm:task/action/economy/economy_1/show
execute if score @s action_task matches 702 run function rfm:task/action/economy/economy_2/show
execute if score @s action_task matches 703 run function rfm:task/action/economy/economy_3/show
execute if score @s action_task matches 704 run function rfm:task/action/economy/economy_4/show
execute if score @s action_task matches 705 run function rfm:task/action/economy/economy_5/show

execute if score @s action_task matches 801 run function rfm:task/action/welfare/welfare_1/show
execute if score @s action_task matches 802 run function rfm:task/action/welfare/welfare_2/show
execute if score @s action_task matches 803 run function rfm:task/action/welfare/welfare_3/show
execute if score @s action_task matches 804 run function rfm:task/action/welfare/welfare_4/show
execute if score @s action_task matches 805 run function rfm:task/action/welfare/welfare_5/show

execute if score @s action_task matches 901 run function rfm:task/action/ecology/ecology_1/show
execute if score @s action_task matches 902 run function rfm:task/action/ecology/ecology_2/show
execute if score @s action_task matches 903 run function rfm:task/action/ecology/ecology_3/show
execute if score @s action_task matches 904 run function rfm:task/action/ecology/ecology_4/show
execute if score @s action_task matches 905 run function rfm:task/action/ecology/ecology_5/show

execute if score @s action_task matches 0 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.397b426b333a","color":"gray"},{"selector":"@s","color":"white"},{"translate":"rfm.text.72096b58dffc","color":"gray"}]
