#主动刷新永久免费，仍消耗一次刷新机会
scoreboard players add @s collection_refresh_count 1
function rfm:collection/mysterious/refresh_one
playsound minecraft:entity.villager.trade master @s ~ ~ ~ 0.8 1.15
tellraw @s {"text":"神秘人免费换上了新的藏品。","color":"gray"}
function rfm:collection/mysterious/show_offer
