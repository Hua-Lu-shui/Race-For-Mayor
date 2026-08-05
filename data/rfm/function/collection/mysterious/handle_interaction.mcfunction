tag @s add rfm_collection_current_interaction
#右键者必然贴近交互框；用最近玩家并核对房间，避免其他办公室玩家读取报价
execute as @a[sort=nearest,limit=1,distance=..3] if score @s room = @e[type=minecraft:interaction,tag=rfm_collection_current_interaction,limit=1] room run function rfm:collection/mysterious/show_offer
data remove entity @s interaction
tag @s remove rfm_collection_current_interaction
