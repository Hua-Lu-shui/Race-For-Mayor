scoreboard players set @s supply_shop_4 1
scoreboard players add @s supply_completed 1
execute if score @s supply_order matches 1 run data remove block 412 -60 105 Items[{id:"minecraft:glass_bottle"}]
execute if score @s supply_order matches 2 run data remove block 412 -60 105 Items[{id:"minecraft:honey_bottle"}]
execute if score @s supply_order matches 3 run data remove block 412 -60 105 Items[{id:"minecraft:redstone"}]
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2 1
tellraw @a {"text":"药剂店补货完成！","color":"green"}
