#以1/2/4/8记录名誉/经济/民生/生态；从任意非空并列掩码中等概率选出一项并写入1..4
scoreboard players set @s collection_effect_pick 1
execute if score @s collection_effect_mask matches 1 run scoreboard players set @s collection_effect_pick 1
execute if score @s collection_effect_mask matches 2 run scoreboard players set @s collection_effect_pick 2
execute if score @s collection_effect_mask matches 4 run scoreboard players set @s collection_effect_pick 3
execute if score @s collection_effect_mask matches 8 run scoreboard players set @s collection_effect_pick 4
execute if score @s collection_effect_mask matches 3 store result score @s collection_effect_pick run random value 1..2
execute if score @s collection_effect_mask matches 5 store result score @s collection_effect_pick run random value 1..2
execute if score @s collection_effect_mask matches 5 if score @s collection_effect_pick matches 2 run scoreboard players set @s collection_effect_pick 3
execute if score @s collection_effect_mask matches 9 store result score @s collection_effect_pick run random value 1..2
execute if score @s collection_effect_mask matches 9 if score @s collection_effect_pick matches 2 run scoreboard players set @s collection_effect_pick 4
execute if score @s collection_effect_mask matches 6 store result score @s collection_effect_pick run random value 2..3
execute if score @s collection_effect_mask matches 10 store result score @s collection_pay_pick run random value 1..2
execute if score @s collection_effect_mask matches 10 if score @s collection_pay_pick matches 1 run scoreboard players set @s collection_effect_pick 2
execute if score @s collection_effect_mask matches 10 if score @s collection_pay_pick matches 2 run scoreboard players set @s collection_effect_pick 4
execute if score @s collection_effect_mask matches 12 store result score @s collection_effect_pick run random value 3..4
execute if score @s collection_effect_mask matches 7 store result score @s collection_effect_pick run random value 1..3
execute if score @s collection_effect_mask matches 11 store result score @s collection_effect_pick run random value 1..3
execute if score @s collection_effect_mask matches 11 if score @s collection_effect_pick matches 3 run scoreboard players set @s collection_effect_pick 4
execute if score @s collection_effect_mask matches 13 store result score @s collection_pay_pick run random value 1..3
execute if score @s collection_effect_mask matches 13 if score @s collection_pay_pick matches 1 run scoreboard players set @s collection_effect_pick 1
execute if score @s collection_effect_mask matches 13 if score @s collection_pay_pick matches 2 run scoreboard players set @s collection_effect_pick 3
execute if score @s collection_effect_mask matches 13 if score @s collection_pay_pick matches 3 run scoreboard players set @s collection_effect_pick 4
execute if score @s collection_effect_mask matches 14 store result score @s collection_effect_pick run random value 2..4
execute if score @s collection_effect_mask matches 15 store result score @s collection_effect_pick run random value 1..4
