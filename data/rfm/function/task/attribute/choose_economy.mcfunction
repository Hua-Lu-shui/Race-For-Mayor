#设置属性选择计分板为0
scoreboard players set @s attribute_choice 0
#随机抽取经济决策任务编号
execute store result score @s decision_task run random value 201..205
#匹配编号对应的经济决策任务
execute if score @s decision_task matches 201 run function rfm:task/decision/economy/tax/tax_show
execute if score @s decision_task matches 202 run function rfm:task/decision/economy/investment/investment_show
execute if score @s decision_task matches 203 run function rfm:task/decision/economy/subsidy/subsidy_show
execute if score @s decision_task matches 204 run function rfm:task/decision/economy/loan/loan_show
execute if score @s decision_task matches 205 run function rfm:task/decision/economy/night_market/night_market_show