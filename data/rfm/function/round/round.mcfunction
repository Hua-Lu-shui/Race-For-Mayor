scoreboard players add #round round 1
execute as @a[tag=rfm_participant,scores={candidate=2}] run function rfm:ability/business/round_start
execute as @a[tag=rfm_participant,scores={candidate=1}] run function rfm:ability/star/snapshot
execute as @a[tag=rfm_participant] run function rfm:collection/effect/master_key
execute as @a[tag=rfm_participant] run function rfm:collection/effect/magic_mirror
execute as @a[tag=rfm_participant] if score @s collection_slot1 matches 32 run function rfm:collection/effect/rubiks_cube
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 32 if score @s collection_slot2 matches 32 run function rfm:collection/effect/rubiks_cube
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 32 unless score @s collection_slot2 matches 32 if score @s collection_slot3 matches 32 run function rfm:collection/effect/rubiks_cube
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 32 unless score @s collection_slot2 matches 32 unless score @s collection_slot3 matches 32 if score @s collection_slot4 matches 32 run function rfm:collection/effect/rubiks_cube
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 32 unless score @s collection_slot2 matches 32 unless score @s collection_slot3 matches 32 unless score @s collection_slot4 matches 32 if score @s collection_slot5 matches 32 run function rfm:collection/effect/rubiks_cube
execute as @a[tag=rfm_participant] run function rfm:collection/effect/meteorite_fragment
execute as @a[tag=rfm_participant] run function rfm:collection/effect/crystal_ball
execute as @a[tag=rfm_participant] run function rfm:collection/effect/ancient_vase
execute as @a[tag=rfm_participant] run function rfm:collection/effect/unstable_device
execute as @a[tag=rfm_participant] run function rfm:collection/effect/round_start_lowest
execute as @a[tag=rfm_participant] run function rfm:collection/effect/round_start_basic
execute as @a[tag=rfm_participant] run function rfm:collection/effect/succulent
execute as @a[tag=rfm_participant] run function rfm:collection/effect/paper_plane
execute as @a[tag=rfm_participant] run function rfm:collection/effect/monocle
execute as @a[tag=rfm_participant] run function rfm:collection/effect/horn
title @a[tag=rfm_participant] title [{"translate":"rfm.text.f495347d6acf","color":"white","bold":true},{"score":{"name":"#round","objective":"round"},"color":"light_purple","bold":true},{"translate":"rfm.text.9be0dd7897d4","color":"white","bold":true}]
function rfm:task/task_assign
function rfm:task/action/assign
execute as @a[tag=rfm_participant] if score @s action_role matches 1 run function rfm:task/action/attribute/show
execute as @a[tag=rfm_participant] unless score @s action_player matches 1 run function rfm:task/decision/attribute/show
