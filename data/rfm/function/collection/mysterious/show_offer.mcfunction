function rfm:collection/mysterious/configure_offer
playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 0.7 0.8
tellraw @s [{"text":"神秘人：","color":"dark_purple","bold":true},{"text":"我为你准备了一件只属于你的藏品。","color":"white"}]
execute if score @s collection_offer matches 1 run tellraw @s [{"text":"本次藏品：","color":"gray"},{"text":"未定藏品·一","color":"aqua","bold":true},{"text":"（持续效果待定）","color":"dark_gray"}]
execute if score @s collection_offer matches 2 run tellraw @s [{"text":"本次藏品：","color":"gray"},{"text":"未定藏品·二","color":"yellow","bold":true},{"text":"（持续效果待定）","color":"dark_gray"}]
execute if score @s collection_offer matches 3 run tellraw @s [{"text":"本次藏品：","color":"gray"},{"text":"未定藏品·三","color":"red","bold":true},{"text":"（持续效果待定）","color":"dark_gray"}]
execute if score @s collection_offer matches 4 run tellraw @s [{"text":"本次藏品：","color":"gray"},{"text":"未定藏品·四","color":"green","bold":true},{"text":"（持续效果待定）","color":"dark_gray"}]
execute if score @s collection_cost matches ..-1 run tellraw @s [{"text":"交易所需属性与价格尚未确定，当前仅展示系统占位。","color":"gray"},{"text":" [确认交易]","color":"dark_gray","underlined":true,"clickEvent":{"action":"run_command","value":"/function rfm:collection/trade/confirm"},"hoverEvent":{"action":"show_text","contents":{"text":"当前交易尚未开放","color":"gray"}}}]
execute if score @s collection_cost matches 0.. run tellraw @s [{"text":"交易价格：","color":"gray"},{"score":{"name":"@s","objective":"collection_cost"},"color":"gold","bold":true},{"text":" 点对应属性","color":"white"},{"text":" [确认交易]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function rfm:collection/trade/confirm"}}]

