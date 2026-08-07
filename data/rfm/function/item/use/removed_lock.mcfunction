#旧版属性锁定令牌已从当前令牌池移除，丢出后只清理旧持有状态
tellraw @s {"text":"属性锁定令牌已移除，本枚旧令牌已清理。","color":"gray"}
clear @s minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}]
scoreboard players set @s item_held 0
