#“珠宝大盗的手套”：每回合50%几率偷取一件其他候选人身上且自己未拥有的藏品
execute unless score @s collection_slot1 matches 14 unless score @s collection_slot2 matches 14 unless score @s collection_slot3 matches 14 run return 0
execute unless score @s collection_slot1 matches 0 unless score @s collection_slot2 matches 0 unless score @s collection_slot3 matches 0 run return 0
execute unless score @s candidate matches 8 unless score @s collection_slot1 matches 0 unless score @s collection_slot2 matches 0 run return 0
execute store result score @s collection_steal_roll run random value 1..100
execute if score @s collection_steal_roll matches 51.. run return 0
tag @a[tag=rfm_participant] remove rfm_collection_thief
tag @a[tag=rfm_participant] remove rfm_collection_victim
tag @s add rfm_collection_thief
execute as @a[tag=rfm_participant,tag=!rfm_collection_thief,sort=random,limit=1] if score @s collection_slot1 matches 1.. unless score @s collection_slot1 = @a[tag=rfm_participant,tag=rfm_collection_thief,limit=1] collection_slot1 unless score @s collection_slot1 = @a[tag=rfm_participant,tag=rfm_collection_thief,limit=1] collection_slot2 unless score @s collection_slot1 = @a[tag=rfm_participant,tag=rfm_collection_thief,limit=1] collection_slot3 run tag @s add rfm_collection_victim
execute as @a[tag=rfm_participant,tag=!rfm_collection_thief,sort=random,limit=1] if score @s collection_slot2 matches 1.. unless score @s collection_slot2 = @a[tag=rfm_participant,tag=rfm_collection_thief,limit=1] collection_slot1 unless score @s collection_slot2 = @a[tag=rfm_participant,tag=rfm_collection_thief,limit=1] collection_slot2 unless score @s collection_slot2 = @a[tag=rfm_participant,tag=rfm_collection_thief,limit=1] collection_slot3 run tag @s add rfm_collection_victim
execute as @a[tag=rfm_participant,tag=!rfm_collection_thief,sort=random,limit=1] if score @s collection_slot3 matches 1.. unless score @s collection_slot3 = @a[tag=rfm_participant,tag=rfm_collection_thief,limit=1] collection_slot1 unless score @s collection_slot3 = @a[tag=rfm_participant,tag=rfm_collection_thief,limit=1] collection_slot2 unless score @s collection_slot3 = @a[tag=rfm_participant,tag=rfm_collection_thief,limit=1] collection_slot3 run tag @s add rfm_collection_victim
execute unless entity @a[tag=rfm_participant,tag=rfm_collection_victim] run tag @s remove rfm_collection_thief
execute unless entity @a[tag=rfm_participant,tag=rfm_collection_victim] run return 0
#collection_offer可能需要跨回合保留，偷取时先暂存并在结算后恢复
scoreboard players operation @s collection_previous_offer = @s collection_offer
scoreboard players set @s collection_offer 0
execute as @a[tag=rfm_participant,tag=rfm_collection_victim,sort=random,limit=1] run function rfm:collection/effect/steal/from_victim
execute if score @s collection_offer matches 1.. run function rfm:collection/effect/steal/receive
scoreboard players operation @s collection_offer = @s collection_previous_offer
tag @a[tag=rfm_participant] remove rfm_collection_thief
tag @a[tag=rfm_participant] remove rfm_collection_victim
