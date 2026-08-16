#决策后藏品效果顺序：带批注的档案结算 -> 手镯结算
execute if score @s collection_slot1 matches 4 run function rfm:collection/effect/annotated_file/apply
execute unless score @s collection_slot1 matches 4 if score @s collection_slot2 matches 4 run function rfm:collection/effect/annotated_file/apply
execute unless score @s collection_slot1 matches 4 unless score @s collection_slot2 matches 4 if score @s collection_slot3 matches 4 run function rfm:collection/effect/annotated_file/apply
function rfm:collection/effect/bracelet
