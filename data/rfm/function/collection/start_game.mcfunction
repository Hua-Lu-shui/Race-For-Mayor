#新一局清空旧藏品与报价；医生的开局藏品由天赋函数单独生成
scoreboard players set @a collection_slot1 0
scoreboard players set @a collection_slot2 0
scoreboard players set @a collection_offer 0
scoreboard players set @a collection_attr 0
scoreboard players set @a collection_cost -1
scoreboard players set @a collection_target 0
clear @a minecraft:amethyst_shard[minecraft:custom_data~{rfm_collection:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_collection:1}}}}]
function rfm:collection/mysterious/cleanup
execute as @a[scores={candidate=8}] run function rfm:ability/doctor/start

