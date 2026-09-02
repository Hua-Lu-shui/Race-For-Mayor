execute store result score @s collection_offer_shift run random value 1..6
execute if score @s collection_offer_shift matches 1 run scoreboard players set @s collection_offer 14
execute if score @s collection_offer_shift matches 2 run scoreboard players set @s collection_offer 26
execute if score @s collection_offer_shift matches 3 run scoreboard players set @s collection_offer 27
execute if score @s collection_offer_shift matches 4 run scoreboard players set @s collection_offer 28
execute if score @s collection_offer_shift matches 5 run scoreboard players set @s collection_offer 29
execute if score @s collection_offer_shift matches 6 run scoreboard players set @s collection_offer 30
