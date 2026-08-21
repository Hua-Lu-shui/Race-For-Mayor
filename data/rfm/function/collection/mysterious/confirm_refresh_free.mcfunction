#免费模式仍消耗主动刷新次数，但不检查或扣除任何属性
scoreboard players add @s collection_refresh_count 1
function rfm:collection/mysterious/refresh_one
playsound minecraft:entity.villager.trade master @s ~ ~ ~ 0.8 1.15
tellraw @s {"text":"神秘人免费换上了新的藏品。","color":"gray"}
function rfm:collection/mysterious/show_offer
