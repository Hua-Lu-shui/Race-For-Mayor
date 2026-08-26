scoreboard players set @s supply_shop_3 1
scoreboard players add @s supply_completed 1
execute if score @s supply_order matches 1 run data remove block 199 -58 12 Items[{id:"minecraft:potato"}]
execute if score @s supply_order matches 2 run data remove block 199 -58 12 Items[{id:"minecraft:carrot"}]
execute if score @s supply_order matches 3 run data remove block 199 -58 12 Items[{id:"minecraft:beetroot"}]
playsound minecraft:entity.experience_orb.pickup master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.565e27ec9e9b","color":"green"}
