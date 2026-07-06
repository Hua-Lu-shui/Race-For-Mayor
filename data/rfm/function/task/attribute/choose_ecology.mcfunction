#设置属性选择计分板为0
scoreboard players set @s attribute_choice 0
#随机抽取生态决策任务编号
execute store result score @s decision_task run random value 401..415
#匹配编号对应的生态决策任务
execute if score @s decision_task matches 401 run function rfm:task/decision/ecology/factory/factory_show
execute if score @s decision_task matches 402 run function rfm:task/decision/ecology/river/river_show
execute if score @s decision_task matches 403 run function rfm:task/decision/ecology/park/park_show
execute if score @s decision_task matches 404 run function rfm:task/decision/ecology/trash/trash_show
execute if score @s decision_task matches 405 run function rfm:task/decision/ecology/energy/energy_show
execute if score @s decision_task matches 406 run function rfm:task/decision/ecology/green_roof/green_roof_show
execute if score @s decision_task matches 407 run function rfm:task/decision/ecology/bike_lane/bike_lane_show
execute if score @s decision_task matches 408 run function rfm:task/decision/ecology/wetland/wetland_show
execute if score @s decision_task matches 409 run function rfm:task/decision/ecology/air_monitor/air_monitor_show
execute if score @s decision_task matches 410 run function rfm:task/decision/ecology/tree_cut/tree_cut_show
execute if score @s decision_task matches 411 run function rfm:task/decision/ecology/plastic_ban/plastic_ban_show
execute if score @s decision_task matches 412 run function rfm:task/decision/ecology/solar_school/solar_school_show
execute if score @s decision_task matches 413 run function rfm:task/decision/ecology/water_saving/water_saving_show
execute if score @s decision_task matches 414 run function rfm:task/decision/ecology/eco_patrol/eco_patrol_show
execute if score @s decision_task matches 415 run function rfm:task/decision/ecology/low_emission_zone/low_emission_zone_show
