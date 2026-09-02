scoreboard players add @s collection_refresh_count 1
function rfm:collection/mysterious/refresh_one
playsound minecraft:entity.villager.trade master @s ~ ~ ~ 0.8 1.15
tellraw @s {"translate":"rfm.text.7edc11271bae","color":"gray"}
function rfm:collection/mysterious/show_offer
