#十一件普通藏品在普通稀有度内等概率抽取
execute store result score @s collection_offer_shift run random value 1..11
execute if score @s collection_offer_shift matches 1 run scoreboard players set @s collection_offer 1
execute if score @s collection_offer_shift matches 2 run scoreboard players set @s collection_offer 2
execute if score @s collection_offer_shift matches 3 run scoreboard players set @s collection_offer 4
execute if score @s collection_offer_shift matches 4 run scoreboard players set @s collection_offer 5
execute if score @s collection_offer_shift matches 5 run scoreboard players set @s collection_offer 6
execute if score @s collection_offer_shift matches 6 run scoreboard players set @s collection_offer 8
execute if score @s collection_offer_shift matches 7 run scoreboard players set @s collection_offer 16
execute if score @s collection_offer_shift matches 8 run scoreboard players set @s collection_offer 18
execute if score @s collection_offer_shift matches 9 run scoreboard players set @s collection_offer 20
execute if score @s collection_offer_shift matches 10 run scoreboard players set @s collection_offer 22
execute if score @s collection_offer_shift matches 11 run scoreboard players set @s collection_offer 32
