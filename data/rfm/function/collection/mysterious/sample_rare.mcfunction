#十三件稀有藏品在稀有度内等概率抽取
execute store result score @s collection_offer_shift run random value 1..13
execute if score @s collection_offer_shift matches 1 run scoreboard players set @s collection_offer 3
execute if score @s collection_offer_shift matches 2 run scoreboard players set @s collection_offer 9
execute if score @s collection_offer_shift matches 3 run scoreboard players set @s collection_offer 13
execute if score @s collection_offer_shift matches 4 run scoreboard players set @s collection_offer 15
execute if score @s collection_offer_shift matches 5 run scoreboard players set @s collection_offer 17
execute if score @s collection_offer_shift matches 6 run scoreboard players set @s collection_offer 19
execute if score @s collection_offer_shift matches 7 run scoreboard players set @s collection_offer 21
execute if score @s collection_offer_shift matches 8 run scoreboard players set @s collection_offer 23
execute if score @s collection_offer_shift matches 9 run scoreboard players set @s collection_offer 24
execute if score @s collection_offer_shift matches 10 run scoreboard players set @s collection_offer 34
execute if score @s collection_offer_shift matches 11 run scoreboard players set @s collection_offer 39
execute if score @s collection_offer_shift matches 12 run scoreboard players set @s collection_offer 40
execute if score @s collection_offer_shift matches 13 run scoreboard players set @s collection_offer 42
