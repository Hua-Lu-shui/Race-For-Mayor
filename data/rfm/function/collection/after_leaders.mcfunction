#公示后藏品效果统一入口；相同藏品若同时占用多个槽位，只执行一次
execute as @a if score @s collection_slot1 matches 1 run function rfm:collection/effect/faded_press_card
execute as @a unless score @s collection_slot1 matches 1 if score @s collection_slot2 matches 1 run function rfm:collection/effect/faded_press_card
execute as @a unless score @s collection_slot1 matches 1 unless score @s collection_slot2 matches 1 if score @s collection_slot3 matches 1 run function rfm:collection/effect/faded_press_card

#第2回合公示后首次生成神秘人；第3、4回合只刷新报价，实体继续留在办公室
execute if score #round round matches 2 run function rfm:collection/mysterious/spawn_all
execute if score #round round matches 3..4 run function rfm:collection/mysterious/refresh_all
#第五回合结束后不再交易；额外清理用于防止异常流程留下旧实体
execute if score #round round matches 5 run function rfm:collection/mysterious/cleanup
