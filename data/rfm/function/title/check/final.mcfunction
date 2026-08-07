#最终结算前检查终局类头衔
execute as @a[scores={title_collection_bought=0}] unless entity @s[advancements={rfm:title/no_collection=true}] run function rfm:title/award/no_collection
execute as @a[tag=rfm_lead_fame,tag=rfm_lead_economy,tag=rfm_lead_welfare,tag=rfm_lead_ecology] unless entity @s[advancements={rfm:title/all_attribute_leader=true}] run function rfm:title/award/all_attribute_leader
