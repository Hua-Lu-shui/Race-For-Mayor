#新一局清空旧藏品与神秘人展示状态；医生的开局藏品由天赋函数单独生成
scoreboard players set @a collection_slot1 0
scoreboard players set @a collection_slot2 0
scoreboard players set @a collection_slot3 0
scoreboard players set @a collection_offer 0
scoreboard players set @a collection_attr 0
scoreboard players set @a collection_cost -1
scoreboard players set @a collection_target 0
scoreboard players set @a collection_previous_offer 0
scoreboard players set @a collection_offer_shift 0
scoreboard players set @a collection_trade_round -1
scoreboard players set @a collection_view_round -1
scoreboard players set @a collection_refresh 0
scoreboard players set @a collection_refresh_count 0
scoreboard players set @a collection_refresh_cost 0
scoreboard players set @a collection_highest 0
scoreboard players set @a collection_tie_mask 0
scoreboard players set @a collection_pay_pick 0
scoreboard players set @a collection_fame_before 0
scoreboard players set @a collection_economy_before 0
scoreboard players set @a collection_welfare_before 0
scoreboard players set @a collection_ecology_before 0
scoreboard players set @a collection_delta_fame 0
scoreboard players set @a collection_delta_economy 0
scoreboard players set @a collection_delta_welfare 0
scoreboard players set @a collection_delta_ecology 0
scoreboard players set @a collection_effect_value 0
scoreboard players set @a collection_effect_mask 0
scoreboard players set @a collection_effect_pick 0
scoreboard players set @a collection_lowest 0
scoreboard players set @a collection_steal_roll 0
scoreboard players set @a collection_amber_fame 0
scoreboard players set @a collection_amber_economy 0
scoreboard players set @a collection_amber_welfare 0
scoreboard players set @a collection_amber_ecology 0
clear @a minecraft:amethyst_shard[minecraft:custom_data~{rfm_collection:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_collection:1}}}}]
function rfm:collection/mysterious/cleanup
execute as @a[scores={candidate=8}] run function rfm:ability/doctor/start
