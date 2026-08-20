#任意回合属性公示时，同时成为四项属性领先者即可获得遥遥领先
execute as @a[tag=rfm_public_lead_fame,tag=rfm_public_lead_economy,tag=rfm_public_lead_welfare,tag=rfm_public_lead_ecology] unless entity @s[advancements={rfm:title/all_attribute_leader=true}] run function rfm:title/award/all_attribute_leader
