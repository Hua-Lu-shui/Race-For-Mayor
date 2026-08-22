#清理经济行动任务1的临时状态和界面
bossbar set rfm:market_time visible false
clear @s minecraft:paper[minecraft:custom_data={market_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{market_ready:1}}}}]

#记录需要在返回办公室后清理交易物品的行动玩家
tag @s add rfm_market_item_cleanup

scoreboard players set @s market_round 0
scoreboard players set @s market_goods 0
scoreboard players set @s market_target 0
scoreboard players set @s market_answer 0
scoreboard players set @s market_correct 0
scoreboard players set @s market_time 0
scoreboard players set @s market_delay 0
scoreboard players set @s market_state 0
function rfm:task/action/sequence/complete_current
