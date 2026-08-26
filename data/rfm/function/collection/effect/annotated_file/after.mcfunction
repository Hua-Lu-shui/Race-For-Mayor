#带批注的档案需要“本次决策至少有属性增加”，属于条件触发，先于无额外条件的手镯
execute if score @s collection_slot1 matches 4 run function rfm:collection/effect/annotated_file/apply
execute unless score @s collection_slot1 matches 4 if score @s collection_slot2 matches 4 run function rfm:collection/effect/annotated_file/apply
execute unless score @s collection_slot1 matches 4 unless score @s collection_slot2 matches 4 if score @s collection_slot3 matches 4 run function rfm:collection/effect/annotated_file/apply
execute unless score @s collection_slot1 matches 4 unless score @s collection_slot2 matches 4 unless score @s collection_slot3 matches 4 if score @s collection_slot4 matches 4 run function rfm:collection/effect/annotated_file/apply
execute unless score @s collection_slot1 matches 4 unless score @s collection_slot2 matches 4 unless score @s collection_slot3 matches 4 unless score @s collection_slot4 matches 4 if score @s collection_slot5 matches 4 run function rfm:collection/effect/annotated_file/apply
function rfm:collection/effect/bracelet
