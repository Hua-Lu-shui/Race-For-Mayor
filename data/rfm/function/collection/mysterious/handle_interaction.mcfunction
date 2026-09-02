tag @s add rfm_collection_current_interaction
execute as @a[tag=rfm_participant,sort=nearest,limit=1,distance=..3] if score @s room = @e[type=minecraft:interaction,tag=rfm_collection_current_interaction,limit=1] room run function rfm:collection/mysterious/show_offer
data remove entity @s interaction
tag @s remove rfm_collection_current_interaction
