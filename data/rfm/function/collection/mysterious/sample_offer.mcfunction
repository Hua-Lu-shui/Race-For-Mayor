execute store result score @s collection_offer_shift run random value 1..100
execute if score @s collection_offer_shift matches 1..12 run scoreboard players set @s collection_offer 1
execute if score @s collection_offer_shift matches 13..24 run scoreboard players set @s collection_offer 2
execute if score @s collection_offer_shift matches 25..36 run scoreboard players set @s collection_offer 4
execute if score @s collection_offer_shift matches 37..48 run scoreboard players set @s collection_offer 5
execute if score @s collection_offer_shift matches 49..60 run scoreboard players set @s collection_offer 6
execute if score @s collection_offer_shift matches 61..90 run scoreboard players set @s collection_offer 3
execute if score @s collection_offer_shift matches 91..100 run scoreboard players set @s collection_offer 7
