execute as @a[tag=rfm_participant] if score @s collection_slot1 matches 31 run function rfm:collection/effect/jade_seal
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 31 if score @s collection_slot2 matches 31 run function rfm:collection/effect/jade_seal
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 31 unless score @s collection_slot2 matches 31 if score @s collection_slot3 matches 31 run function rfm:collection/effect/jade_seal
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 31 unless score @s collection_slot2 matches 31 unless score @s collection_slot3 matches 31 if score @s collection_slot4 matches 31 run function rfm:collection/effect/jade_seal
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 31 unless score @s collection_slot2 matches 31 unless score @s collection_slot3 matches 31 unless score @s collection_slot4 matches 31 if score @s collection_slot5 matches 31 run function rfm:collection/effect/jade_seal
execute as @a[tag=rfm_participant] if score @s collection_slot1 matches 1 run function rfm:collection/effect/faded_press_card
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 1 if score @s collection_slot2 matches 1 run function rfm:collection/effect/faded_press_card
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 1 unless score @s collection_slot2 matches 1 if score @s collection_slot3 matches 1 run function rfm:collection/effect/faded_press_card
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 1 unless score @s collection_slot2 matches 1 unless score @s collection_slot3 matches 1 if score @s collection_slot4 matches 1 run function rfm:collection/effect/faded_press_card
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 1 unless score @s collection_slot2 matches 1 unless score @s collection_slot3 matches 1 unless score @s collection_slot4 matches 1 if score @s collection_slot5 matches 1 run function rfm:collection/effect/faded_press_card

execute if score #round round matches 2..4 run function rfm:collection/mysterious/spawn_all
execute if score #round round matches 5 run function rfm:collection/mysterious/cleanup
