#“魔镜”：回合开始时，每有一位其他同身份候选人，所有属性+2
execute unless score @s collection_slot1 matches 12 unless score @s collection_slot2 matches 12 unless score @s collection_slot3 matches 12 run return 0
tag @a remove rfm_mirror_owner
tag @s add rfm_mirror_owner
scoreboard players set @s collection_effect_value 0
execute as @a[tag=!rfm_mirror_owner] if score @s candidate = @a[tag=rfm_mirror_owner,limit=1] candidate run function rfm:collection/effect/magic_mirror_double
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
tellraw @s [{"text":"【魔镜】","color":"light_purple","bold":true},{"text":"本回合开始，其他同身份候选人使所有属性各 +","color":"white"},{"score":{"name":"@s","objective":"collection_effect_value"},"color":"white"},{"text":"。","color":"white"}]
tag @s remove rfm_mirror_owner
