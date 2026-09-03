scoreboard players set @s collection_effect_pick 0
execute if score @s collection_cap matches 1.. if score @s collection_slot1 matches 0 run scoreboard players set @s collection_effect_pick 1
execute unless score @s collection_effect_pick matches 1.. if score @s collection_cap matches 2.. if score @s collection_slot2 matches 0 run scoreboard players set @s collection_effect_pick 2
execute unless score @s collection_effect_pick matches 1.. if score @s collection_cap matches 3.. if score @s collection_slot3 matches 0 run scoreboard players set @s collection_effect_pick 3
execute unless score @s collection_effect_pick matches 1.. if score @s collection_cap matches 4.. if score @s collection_slot4 matches 0 run scoreboard players set @s collection_effect_pick 4
execute unless score @s collection_effect_pick matches 1.. if score @s collection_cap matches 5.. if score @s collection_slot5 matches 0 run scoreboard players set @s collection_effect_pick 5
execute if score @s collection_effect_pick matches 1 run scoreboard players operation @s collection_slot1 = @s collection_offer
execute if score @s collection_effect_pick matches 2 run scoreboard players operation @s collection_slot2 = @s collection_offer
execute if score @s collection_effect_pick matches 3 run scoreboard players operation @s collection_slot3 = @s collection_offer
execute if score @s collection_effect_pick matches 4 run scoreboard players operation @s collection_slot4 = @s collection_offer
execute if score @s collection_effect_pick matches 5 run scoreboard players operation @s collection_slot5 = @s collection_offer
execute if score @s collection_offer matches 11 run function rfm:collection/effect/amber_record
tellraw @s [{"translate":"rfm.text.1428054c4b5d","color":"gold","bold":true},{"translate":"rfm.text.b41958ea90e9","color":"white"}]
