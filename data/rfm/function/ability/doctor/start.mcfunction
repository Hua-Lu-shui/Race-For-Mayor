function rfm:collection/mysterious/sample_offer
scoreboard players operation @s collection_slot1 = @s collection_offer
scoreboard players set @s collection_slot2 0
scoreboard players set @s collection_slot3 0
scoreboard players set @s collection_slot4 0
scoreboard players set @s collection_slot5 0
execute if score @s collection_slot1 matches 11 run function rfm:collection/effect/amber_record
tellraw @s [{"translate":"rfm.text.276d39c23b77","color":"#012696","bold":true},{"translate":"rfm.text.41fde3eae313","color":"white"}]
