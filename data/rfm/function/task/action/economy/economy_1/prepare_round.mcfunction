function rfm:task/action/economy/economy_1/create_labels
kill @e[type=minecraft:villager,tag=rfm_market_vendor]
clear @s minecraft:bread[minecraft:custom_data={market_trade:1}]
clear @s minecraft:apple[minecraft:custom_data={market_trade:1}]
clear @s minecraft:iron_ingot[minecraft:custom_data={market_trade:1}]
clear @s minecraft:emerald

execute store result score @s market_goods run random value 1..3
execute store result score @s market_target run random value 1..20
execute store result score @s market_round run random value 1..3
scoreboard players set @s market_answer 0
scoreboard players set @s market_correct 0

function rfm:task/action/economy/economy_1/summon_vendors
function rfm:task/action/economy/economy_1/arrange_vendors
function rfm:task/action/economy/economy_1/set_goods
function rfm:task/action/economy/economy_1/set_best_offer
