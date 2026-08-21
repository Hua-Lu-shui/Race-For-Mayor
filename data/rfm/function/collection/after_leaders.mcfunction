#公示后两件藏品均为条件触发，按史诗 -> 普通结算；相同藏品只执行一次
execute as @a[tag=rfm_participant] if score @s collection_slot1 matches 31 run function rfm:collection/effect/jade_seal
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 31 if score @s collection_slot2 matches 31 run function rfm:collection/effect/jade_seal
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 31 unless score @s collection_slot2 matches 31 if score @s collection_slot3 matches 31 run function rfm:collection/effect/jade_seal
execute as @a[tag=rfm_participant] if score @s collection_slot1 matches 1 run function rfm:collection/effect/faded_press_card
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 1 if score @s collection_slot2 matches 1 run function rfm:collection/effect/faded_press_card
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 1 unless score @s collection_slot2 matches 1 if score @s collection_slot3 matches 1 run function rfm:collection/effect/faded_press_card

#第2至4回合公示后重新生成神秘人，并为每名玩家抽取本回合的新藏品
execute if score #round round matches 2..4 run function rfm:collection/mysterious/spawn_all
#第五回合结束后不再交易；额外清理用于防止异常流程留下旧实体
execute if score #round round matches 5 run function rfm:collection/mysterious/cleanup
