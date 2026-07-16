#清理经济行动任务1的临时状态和界面
bossbar set rfm:market_time visible false
clear @s minecraft:map[minecraft:custom_data={market_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{market_ready:1}}}}]

clear @s minecraft:bread[minecraft:custom_data={market_trade:1}]
clear @s minecraft:apple[minecraft:custom_data={market_trade:1}]
clear @s minecraft:iron_ingot[minecraft:custom_data={market_trade:1}]
clear @s minecraft:emerald

scoreboard players set @s market_round 0
scoreboard players set @s market_goods 0
scoreboard players set @s market_target 0
scoreboard players set @s market_answer 0
scoreboard players set @s market_correct 0
scoreboard players set @s market_time 0
scoreboard players set @s market_delay 0
scoreboard players set @s market_state 0
function rfm:task/action/sequence/complete_current
