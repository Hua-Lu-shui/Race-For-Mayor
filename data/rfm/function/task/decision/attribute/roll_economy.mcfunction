#随机抽取一个经济决策，并用位图判断该玩家本局是否已经抽到过
scoreboard players add @s dec_used_econ 0
execute store result score @s decision_task run random value 201..215
scoreboard players set @s dec_used_bit 1
execute if score @s decision_task matches 202 run scoreboard players set @s dec_used_bit 2
execute if score @s decision_task matches 203 run scoreboard players set @s dec_used_bit 4
execute if score @s decision_task matches 204 run scoreboard players set @s dec_used_bit 8
execute if score @s decision_task matches 205 run scoreboard players set @s dec_used_bit 16
execute if score @s decision_task matches 206 run scoreboard players set @s dec_used_bit 32
execute if score @s decision_task matches 207 run scoreboard players set @s dec_used_bit 64
execute if score @s decision_task matches 208 run scoreboard players set @s dec_used_bit 128
execute if score @s decision_task matches 209 run scoreboard players set @s dec_used_bit 256
execute if score @s decision_task matches 210 run scoreboard players set @s dec_used_bit 512
execute if score @s decision_task matches 211 run scoreboard players set @s dec_used_bit 1024
execute if score @s decision_task matches 212 run scoreboard players set @s dec_used_bit 2048
execute if score @s decision_task matches 213 run scoreboard players set @s dec_used_bit 4096
execute if score @s decision_task matches 214 run scoreboard players set @s dec_used_bit 8192
execute if score @s decision_task matches 215 run scoreboard players set @s dec_used_bit 16384
scoreboard players operation @s dec_used_check = @s dec_used_econ
scoreboard players operation @s dec_used_check /= @s dec_used_bit
scoreboard players set #two dec_used_bit 2
scoreboard players operation @s dec_used_check %= #two dec_used_bit
execute if score @s dec_used_check matches 1 run return run function rfm:task/decision/attribute/roll_economy
scoreboard players operation @s dec_used_econ += @s dec_used_bit
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
