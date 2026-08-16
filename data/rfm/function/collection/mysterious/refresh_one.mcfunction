#按普通50%、稀有30%、史诗15%、传说5%重新抽取，并保证新藏品与当前展示不同
scoreboard players operation @s collection_previous_offer = @s collection_offer
function rfm:collection/mysterious/sample_offer
execute if score @s collection_offer = @s collection_previous_offer run function rfm:collection/mysterious/refresh_one

#同步本办公室神秘人与交互实体记录的藏品
tag @a remove rfm_collection_offer_owner
tag @s add rfm_collection_offer_owner
execute as @e[type=minecraft:item_display,tag=rfm_collection_mysterious] if score @s room = @a[tag=rfm_collection_offer_owner,limit=1] room run scoreboard players operation @s collection_offer = @a[tag=rfm_collection_offer_owner,limit=1] collection_offer
#兼容/reload前已经生成的旧村民神秘人
execute as @e[type=minecraft:villager,tag=rfm_collection_mysterious] if score @s room = @a[tag=rfm_collection_offer_owner,limit=1] room run scoreboard players operation @s collection_offer = @a[tag=rfm_collection_offer_owner,limit=1] collection_offer
execute as @e[type=minecraft:interaction,tag=rfm_collection_interaction] if score @s room = @a[tag=rfm_collection_offer_owner,limit=1] room run scoreboard players operation @s collection_offer = @a[tag=rfm_collection_offer_owner,limit=1] collection_offer
tag @s remove rfm_collection_offer_owner
