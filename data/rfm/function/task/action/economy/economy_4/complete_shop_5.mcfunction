scoreboard players set @s supply_shop_5 1
scoreboard players add @s supply_completed 1
execute if score @s supply_order matches 1 run data remove block 199 -58 31 Items[{id:"minecraft:white_wool"}]
execute if score @s supply_order matches 2 run data remove block 199 -58 31 Items[{id:"minecraft:leather"}]
execute if score @s supply_order matches 3 run data remove block 199 -58 31 Items[{id:"minecraft:string"}]
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2 1
tellraw @a {"text":"裁缝店补货完成！","color":"green"}
