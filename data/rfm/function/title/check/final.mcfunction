#最终结算前检查终局类头衔
execute as @a[scores={title_collection_bought=0}] unless entity @s[advancements={rfm:title/no_collection=true}] run function rfm:title/award/no_collection
