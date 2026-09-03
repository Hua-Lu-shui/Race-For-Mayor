execute unless score @s collection_slot1 matches 12 unless score @s collection_slot2 matches 12 unless score @s collection_slot3 matches 12 unless score @s collection_slot4 matches 12 unless score @s collection_slot5 matches 12 run return 0
execute if score @s fame_lock matches 1 if score @s economy_lock matches 1 if score @s welfare_lock matches 1 if score @s ecology_lock matches 1 run return 0
tag @a[tag=rfm_participant] remove rfm_mirror_owner
tag @s add rfm_mirror_owner
scoreboard players set @s collection_effect_value 0
execute as @a[tag=rfm_participant,tag=!rfm_mirror_owner] if score @s candidate = @a[tag=rfm_participant,tag=rfm_mirror_owner,limit=1] candidate run function rfm:collection/effect/magic_mirror_double
execute unless score @s collection_effect_value matches 1.. run tag @s remove rfm_mirror_owner
execute unless score @s collection_effect_value matches 1.. run return 0
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
tellraw @s [{"translate":"rfm.text.f37da1894c38","color":"light_purple","bold":true},{"translate":"rfm.text.b93dece693e5","color":"white"},{"score":{"name":"@s","objective":"collection_effect_value"},"color":"white"},{"text":"。","color":"white"}]
tag @s remove rfm_mirror_owner
