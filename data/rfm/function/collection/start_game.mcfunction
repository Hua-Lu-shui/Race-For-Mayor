scoreboard players set @a[tag=rfm_participant] collection_slot1 0
scoreboard players set @a[tag=rfm_participant] collection_slot2 0
scoreboard players set @a[tag=rfm_participant] collection_slot3 0
scoreboard players set @a[tag=rfm_participant] collection_slot4 0
scoreboard players set @a[tag=rfm_participant] collection_slot5 0
scoreboard players set @a[tag=rfm_participant] collection_cap 2
execute as @a[tag=rfm_participant,scores={candidate=8}] run scoreboard players set @s collection_cap 3
scoreboard players set @a[tag=rfm_participant] col_expand_used 0
scoreboard players set @a[tag=rfm_participant] collection_offer 0
scoreboard players set @a[tag=rfm_participant] collection_attr 0
scoreboard players set @a[tag=rfm_participant] collection_cost -1
scoreboard players set @a[tag=rfm_participant] collection_target 0
scoreboard players set @a[tag=rfm_participant] collection_previous_offer 0
scoreboard players set @a[tag=rfm_participant] collection_offer_shift 0
scoreboard players set @a[tag=rfm_participant] collection_trade_round -1
scoreboard players set @a[tag=rfm_participant] collection_view_round -1
scoreboard players set @a[tag=rfm_participant] collection_refresh 0
scoreboard players set @a[tag=rfm_participant] collection_refresh_count 0
scoreboard players set @a[tag=rfm_participant] collection_highest 0
scoreboard players set @a[tag=rfm_participant] collection_tie_mask 0
scoreboard players set @a[tag=rfm_participant] collection_pay_pick 0
scoreboard players set @a[tag=rfm_participant] collection_fame_before 0
scoreboard players set @a[tag=rfm_participant] collection_economy_before 0
scoreboard players set @a[tag=rfm_participant] collection_welfare_before 0
scoreboard players set @a[tag=rfm_participant] collection_ecology_before 0
scoreboard players set @a[tag=rfm_participant] collection_delta_fame 0
scoreboard players set @a[tag=rfm_participant] collection_delta_economy 0
scoreboard players set @a[tag=rfm_participant] collection_delta_welfare 0
scoreboard players set @a[tag=rfm_participant] collection_delta_ecology 0
scoreboard players set @a[tag=rfm_participant] collection_effect_value 0
scoreboard players set @a[tag=rfm_participant] collection_effect_mask 0
scoreboard players set @a[tag=rfm_participant] collection_effect_pick 0
scoreboard players set @a[tag=rfm_participant] collection_lowest 0
scoreboard players set @a[tag=rfm_participant] collection_steal_roll 0
scoreboard players set @a[tag=rfm_participant] collection_amber_fame 0
scoreboard players set @a[tag=rfm_participant] collection_amber_economy 0
scoreboard players set @a[tag=rfm_participant] collection_amber_welfare 0
scoreboard players set @a[tag=rfm_participant] collection_amber_ecology 0
clear @a[tag=rfm_participant] minecraft:amethyst_shard[minecraft:custom_data~{rfm_collection:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_collection:1}}}}]
function rfm:collection/mysterious/cleanup
execute as @a[tag=rfm_participant,scores={candidate=8}] run function rfm:ability/doctor/start
