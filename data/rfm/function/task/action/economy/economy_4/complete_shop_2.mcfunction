scoreboard players set @s supply_shop_2 1
scoreboard players add @s supply_completed 1
execute if score @s supply_order matches 1 run data remove block 192 -58 6 Items[{id:"minecraft:coal"}]
execute if score @s supply_order matches 2 run data remove block 192 -58 6 Items[{id:"minecraft:iron_ingot"}]
execute if score @s supply_order matches 3 run data remove block 192 -58 6 Items[{id:"minecraft:charcoal"}]
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2 1
tellraw @a {"text":"铁匠铺补货完成！","color":"green"}
