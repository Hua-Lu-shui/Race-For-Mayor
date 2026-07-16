#重置决策属性选择计分板
scoreboard players set @s attribute_choice 0
#随机抽取经济决策任务编号
execute store result score @s decision_task run random value 201..215
#匹配编号对应的经济决策任务
execute if score @s decision_task matches 201 run function rfm:task/decision/economy/tax/tax_show
execute if score @s decision_task matches 202 run function rfm:task/decision/economy/investment/investment_show
execute if score @s decision_task matches 203 run function rfm:task/decision/economy/subsidy/subsidy_show
execute if score @s decision_task matches 204 run function rfm:task/decision/economy/loan/loan_show
execute if score @s decision_task matches 205 run function rfm:task/decision/economy/night_market/night_market_show
execute if score @s decision_task matches 206 run function rfm:task/decision/economy/logistics_hub/logistics_hub_show
execute if score @s decision_task matches 207 run function rfm:task/decision/economy/startup_fund/startup_fund_show
execute if score @s decision_task matches 208 run function rfm:task/decision/economy/tourism_brand/tourism_brand_show
execute if score @s decision_task matches 209 run function rfm:task/decision/economy/factory_upgrade/factory_upgrade_show
execute if score @s decision_task matches 210 run function rfm:task/decision/economy/market_rent/market_rent_show
execute if score @s decision_task matches 211 run function rfm:task/decision/economy/conference_center/conference_center_show
execute if score @s decision_task matches 212 run function rfm:task/decision/economy/digital_tax/digital_tax_show
execute if score @s decision_task matches 213 run function rfm:task/decision/economy/port_trade/port_trade_show
execute if score @s decision_task matches 214 run function rfm:task/decision/economy/skills_training/skills_training_show
execute if score @s decision_task matches 215 run function rfm:task/decision/economy/public_procurement/public_procurement_show
