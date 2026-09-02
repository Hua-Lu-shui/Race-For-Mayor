execute as @a[tag=rfm_participant,scores={title_collection_bought=0}] unless entity @s[advancements={rfm:title/no_collection=true}] run function rfm:title/award/no_collection
