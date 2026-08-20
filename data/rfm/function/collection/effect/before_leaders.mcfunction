#回合结束、公示前藏品效果统一入口；相同藏品同时占用多个槽位时只执行一次
#概率条件：珠宝大盗的手套（传说）
execute as @a run function rfm:collection/effect/jewel_thief_gloves
#其他条件：戒指组合（稀有） -> 羽毛笔（普通）
execute as @a run function rfm:collection/effect/ring_set
execute as @a if score @s collection_slot1 matches 2 run function rfm:collection/effect/quill_pen
execute as @a unless score @s collection_slot1 matches 2 if score @s collection_slot2 matches 2 run function rfm:collection/effect/quill_pen
execute as @a unless score @s collection_slot1 matches 2 unless score @s collection_slot2 matches 2 if score @s collection_slot3 matches 2 run function rfm:collection/effect/quill_pen
#无额外触发条件：世纪名画（传说） -> 金属怀表（稀有）
execute as @a run function rfm:collection/effect/masterpiece
execute as @a run function rfm:collection/effect/metal_pocket_watch
