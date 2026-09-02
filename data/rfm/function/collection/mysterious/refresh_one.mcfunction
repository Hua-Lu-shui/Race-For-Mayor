scoreboard players operation @s collection_previous_offer = @s collection_offer
function rfm:collection/mysterious/sample_offer
execute if score @s collection_offer = @s collection_previous_offer run function rfm:collection/mysterious/refresh_one

tag @a[tag=rfm_participant] remove rfm_collection_offer_owner
tag @s add rfm_collection_offer_owner
execute as @e[type=minecraft:item_display,tag=rfm_collection_mysterious] if score @s room = @a[tag=rfm_participant,tag=rfm_collection_offer_owner,limit=1] room run scoreboard players operation @s collection_offer = @a[tag=rfm_participant,tag=rfm_collection_offer_owner,limit=1] collection_offer
execute as @e[type=minecraft:villager,tag=rfm_collection_mysterious] if score @s room = @a[tag=rfm_participant,tag=rfm_collection_offer_owner,limit=1] room run scoreboard players operation @s collection_offer = @a[tag=rfm_participant,tag=rfm_collection_offer_owner,limit=1] collection_offer
execute as @e[type=minecraft:interaction,tag=rfm_collection_interaction] if score @s room = @a[tag=rfm_participant,tag=rfm_collection_offer_owner,limit=1] room run scoreboard players operation @s collection_offer = @a[tag=rfm_participant,tag=rfm_collection_offer_owner,limit=1] collection_offer
tag @s remove rfm_collection_offer_owner
