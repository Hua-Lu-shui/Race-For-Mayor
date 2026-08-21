#藏品掉落回收入口；回合结算型持续效果由effect/before_leaders与collection/after_leaders分派
#藏品被玩家丢出后，根据掉落实体记录的投掷者立刻重新放回原玩家快捷栏
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_collection:1}}}}] at @s run function rfm:collection/return_dropped
