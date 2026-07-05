#设置属性选择计分板为0
scoreboard players set @s attribute_choice 0
#随机抽取生态决策任务编号
execute store result score @s decision_task run random value 401..405
#匹配编号对应的生态决策任务
execute if score @s decision_task matches 401 run function rfm:task/decision/ecology/factory/factory_show
execute if score @s decision_task matches 402 run function rfm:task/decision/ecology/river/river_show
execute if score @s decision_task matches 403 run function rfm:task/decision/ecology/park/park_show
execute if score @s decision_task matches 404 run function rfm:task/decision/ecology/trash/trash_show
execute if score @s decision_task matches 405 run function rfm:task/decision/ecology/energy/energy_show
