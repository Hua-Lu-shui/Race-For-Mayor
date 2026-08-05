#藏品持续效果总入口（占位）
#确定具体藏品后，按collection_slot1 / collection_slot2分派到各藏品效果函数。
#藏品被玩家丢出后，根据掉落实体记录的投掷者立刻重新放回原玩家快捷栏
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_collection:1}}}}] at @s on origin run function rfm:collection/return_dropped
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_collection:1}}}}]
