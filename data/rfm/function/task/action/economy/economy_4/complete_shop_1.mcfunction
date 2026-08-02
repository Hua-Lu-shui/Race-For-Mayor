scoreboard players set @s supply_shop_1 1
scoreboard players add @s supply_completed 1
execute if score @s supply_order matches 1 run data remove block 208 -58 23 Items[{id:"minecraft:wheat"}]
execute if score @s supply_order matches 2 run data remove block 208 -58 23 Items[{id:"minecraft:egg"}]
execute if score @s supply_order matches 3 run data remove block 208 -58 23 Items[{id:"minecraft:milk_bucket"}]
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2 1
tellraw @a {"text":"面包店补货完成！","color":"green"}
