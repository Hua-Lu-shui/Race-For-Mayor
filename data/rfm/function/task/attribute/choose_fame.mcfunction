#设置属性选择计分板为0
scoreboard players set @s attribute_choice 0
#随机抽取名誉决策任务编号
execute store result score @s decision_task run random value 101..105
#匹配编号对应的名誉决策任务任务
execute if score @s decision_task matches 101 run function rfm:task/decision/fame/media/media_show
execute if score @s decision_task matches 102 run function rfm:task/decision/fame/debate/debate_show
execute if score @s decision_task matches 103 run function rfm:task/decision/fame/anti_corruption/anti_corruption_show
execute if score @s decision_task matches 104 run function rfm:task/decision/fame/charity/charity_show
execute if score @s decision_task matches 105 run function rfm:task/decision/fame/rumor/rumor_show