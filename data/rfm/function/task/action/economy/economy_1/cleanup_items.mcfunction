#行动玩家返回办公室、交易界面关闭后，清除所有市场调研任务物品
clear @a[tag=rfm_market_item_cleanup] minecraft:bread[minecraft:custom_data={market_trade:1}]
clear @a[tag=rfm_market_item_cleanup] minecraft:apple[minecraft:custom_data={market_trade:1}]
clear @a[tag=rfm_market_item_cleanup] minecraft:iron_ingot[minecraft:custom_data={market_trade:1}]
clear @a[tag=rfm_market_item_cleanup] minecraft:emerald
tag @a[tag=rfm_market_item_cleanup] remove rfm_market_item_cleanup
