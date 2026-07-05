#设置属性选择计分板为0
scoreboard players set @s attribute_choice 0

execute store result score @s decision_task run random value 301..305

execute if score @s decision_task matches 301 run function rfm:task/decision/welfare/hospital/hospital_show
execute if score @s decision_task matches 302 run function rfm:task/decision/welfare/housing/housing_show
execute if score @s decision_task matches 303 run function rfm:task/decision/welfare/education/education_show
execute if score @s decision_task matches 304 run function rfm:task/decision/welfare/transport/transport_show
execute if score @s decision_task matches 305 run function rfm:task/decision/welfare/pension/pension_show
