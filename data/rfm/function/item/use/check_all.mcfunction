#逐个检测丢出的令牌，并只允许该物品实体的原主人触发效果
tag @e[type=minecraft:item,tag=rfm_item_current] remove rfm_item_current
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}] at @s run function rfm:item/use/from_drop
