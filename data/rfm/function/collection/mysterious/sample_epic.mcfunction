#六件史诗藏品在史诗稀有度内等概率抽取
execute store result score @s collection_offer_shift run random value 1..6
execute if score @s collection_offer_shift matches 1 run scoreboard players set @s collection_offer 7
execute if score @s collection_offer_shift matches 2 run scoreboard players set @s collection_offer 10
execute if score @s collection_offer_shift matches 3 run scoreboard players set @s collection_offer 11
execute if score @s collection_offer_shift matches 4 run scoreboard players set @s collection_offer 12
execute if score @s collection_offer_shift matches 5 run scoreboard players set @s collection_offer 25
execute if score @s collection_offer_shift matches 6 run scoreboard players set @s collection_offer 31
