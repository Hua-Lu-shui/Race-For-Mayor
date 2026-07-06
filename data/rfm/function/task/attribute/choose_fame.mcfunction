#设置属性选择计分板为0
scoreboard players set @s attribute_choice 0
#随机抽取名誉决策任务编号
execute store result score @s decision_task run random value 101..115
#匹配编号对应的名誉决策任务任务
execute if score @s decision_task matches 101 run function rfm:task/decision/fame/media/media_show
execute if score @s decision_task matches 102 run function rfm:task/decision/fame/debate/debate_show
execute if score @s decision_task matches 103 run function rfm:task/decision/fame/anti_corruption/anti_corruption_show
execute if score @s decision_task matches 104 run function rfm:task/decision/fame/charity/charity_show
execute if score @s decision_task matches 105 run function rfm:task/decision/fame/rumor/rumor_show
execute if score @s decision_task matches 106 run function rfm:task/decision/fame/volunteer/volunteer_show
execute if score @s decision_task matches 107 run function rfm:task/decision/fame/apology/apology_show
execute if score @s decision_task matches 108 run function rfm:task/decision/fame/endorsement/endorsement_show
execute if score @s decision_task matches 109 run function rfm:task/decision/fame/open_day/open_day_show
execute if score @s decision_task matches 110 run function rfm:task/decision/fame/debunk/debunk_show
execute if score @s decision_task matches 111 run function rfm:task/decision/fame/youth_forum/youth_forum_show
execute if score @s decision_task matches 112 run function rfm:task/decision/fame/press_leak/press_leak_show
execute if score @s decision_task matches 113 run function rfm:task/decision/fame/street_speech/street_speech_show
execute if score @s decision_task matches 114 run function rfm:task/decision/fame/fact_check/fact_check_show
execute if score @s decision_task matches 115 run function rfm:task/decision/fame/heritage_event/heritage_event_show
