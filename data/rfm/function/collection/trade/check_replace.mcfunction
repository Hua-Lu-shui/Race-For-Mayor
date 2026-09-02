execute if score @s collection_replace matches 1 run function rfm:collection/trade/replace_slot1
execute if score @s collection_replace matches 2 run function rfm:collection/trade/replace_slot2
execute if score @s collection_replace matches 3 run function rfm:collection/trade/replace_slot3
execute if score @s collection_replace matches 4 run function rfm:collection/trade/replace_slot4
execute if score @s collection_replace matches 5 run function rfm:collection/trade/replace_slot5
scoreboard players set @s collection_replace 0
