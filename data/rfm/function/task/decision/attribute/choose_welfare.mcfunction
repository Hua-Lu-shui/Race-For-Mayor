#记录连续选择民生决策的称号进度
function rfm:title/decision/welfare
#重置决策属性选择计分板
scoreboard players set @s attribute_choice 0
#随机抽取民生决策任务编号
execute store result score @s decision_task run random value 301..315
#匹配编号对应的民生决策任务
execute if score @s decision_task matches 301 run function rfm:task/decision/welfare/hospital/hospital_show
execute if score @s decision_task matches 302 run function rfm:task/decision/welfare/housing/housing_show
execute if score @s decision_task matches 303 run function rfm:task/decision/welfare/education/education_show
execute if score @s decision_task matches 304 run function rfm:task/decision/welfare/transport/transport_show
execute if score @s decision_task matches 305 run function rfm:task/decision/welfare/pension/pension_show
execute if score @s decision_task matches 306 run function rfm:task/decision/welfare/clinic/clinic_show
execute if score @s decision_task matches 307 run function rfm:task/decision/welfare/childcare/childcare_show
execute if score @s decision_task matches 308 run function rfm:task/decision/welfare/food_safety/food_safety_show
execute if score @s decision_task matches 309 run function rfm:task/decision/welfare/sports_field/sports_field_show
execute if score @s decision_task matches 310 run function rfm:task/decision/welfare/elder_meals/elder_meals_show
execute if score @s decision_task matches 311 run function rfm:task/decision/welfare/noise_control/noise_control_show
execute if score @s decision_task matches 312 run function rfm:task/decision/welfare/rental_dispute/rental_dispute_show
execute if score @s decision_task matches 313 run function rfm:task/decision/welfare/disabled_access/disabled_access_show
execute if score @s decision_task matches 314 run function rfm:task/decision/welfare/emergency_shelter/emergency_shelter_show
execute if score @s decision_task matches 315 run function rfm:task/decision/welfare/library_hours/library_hours_show
