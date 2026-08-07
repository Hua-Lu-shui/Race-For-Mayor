#回合结束、公示前藏品效果统一入口；相同藏品同时占用多个槽位时只执行一次
execute as @a if score @s collection_slot1 matches 2 run function rfm:collection/effect/unsung_hero_medal
execute as @a unless score @s collection_slot1 matches 2 if score @s collection_slot2 matches 2 run function rfm:collection/effect/unsung_hero_medal
execute as @a unless score @s collection_slot1 matches 2 unless score @s collection_slot2 matches 2 if score @s collection_slot3 matches 2 run function rfm:collection/effect/unsung_hero_medal
execute as @a run function rfm:collection/effect/metal_pocket_watch
execute as @a run function rfm:collection/effect/ring_set
execute as @a run function rfm:collection/effect/jewel_thief_gloves
