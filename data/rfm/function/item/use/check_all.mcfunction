#玩家在等待下一轮时选中海洋之心并按Q丢出，即使用当前持有的道具
execute as @a[scores={item_held=1..20}] at @s if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}] run function rfm:item/use/dispatch
