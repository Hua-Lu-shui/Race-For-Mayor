scoreboard players set @s settle_ready 1
scoreboard players set @s settle_clock 0
clear @s minecraft:clock[minecraft:custom_data={settlement_ready:1}]
#该玩家确认结算后立即清除其令牌与藏品物品；藏品槽位分数保留到最终效果和统计书读取完成
clear @s minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
scoreboard players set @s item_held 0
clear @s minecraft:amethyst_shard[minecraft:custom_data~{rfm_collection:1}]
tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"white"},{"text":" 已确认进入最终结算。","color":"gray"}]
