#在原报价上随机偏移1..5并按6循环，保证新报价与上一回合不同
scoreboard players operation @s collection_previous_offer = @s collection_offer
execute store result score @s collection_offer_shift run random value 1..5
scoreboard players operation @s collection_offer += @s collection_offer_shift
execute if score @s collection_offer matches 7..11 run scoreboard players remove @s collection_offer 6

#同步本办公室神秘人与交互实体记录的报价
tag @a remove rfm_collection_offer_owner
tag @s add rfm_collection_offer_owner
execute as @e[type=minecraft:villager,tag=rfm_collection_mysterious] if score @s room = @a[tag=rfm_collection_offer_owner,limit=1] room run scoreboard players operation @s collection_offer = @a[tag=rfm_collection_offer_owner,limit=1] collection_offer
execute as @e[type=minecraft:interaction,tag=rfm_collection_interaction] if score @s room = @a[tag=rfm_collection_offer_owner,limit=1] room run scoreboard players operation @s collection_offer = @a[tag=rfm_collection_offer_owner,limit=1] collection_offer
tag @s remove rfm_collection_offer_owner
