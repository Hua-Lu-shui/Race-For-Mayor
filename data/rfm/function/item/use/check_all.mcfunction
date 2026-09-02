tag @e[type=minecraft:item,tag=rfm_item_current] remove rfm_item_current
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}] at @s run function rfm:item/use/from_drop
