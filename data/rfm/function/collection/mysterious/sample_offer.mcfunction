execute store result score @s collection_offer_shift run random value 1..100
execute if score @s collection_offer_shift matches 1..50 run function rfm:collection/mysterious/sample_common
execute if score @s collection_offer_shift matches 51..80 run function rfm:collection/mysterious/sample_rare
execute if score @s collection_offer_shift matches 81..95 run function rfm:collection/mysterious/sample_epic
execute if score @s collection_offer_shift matches 96..100 run function rfm:collection/mysterious/sample_legendary
