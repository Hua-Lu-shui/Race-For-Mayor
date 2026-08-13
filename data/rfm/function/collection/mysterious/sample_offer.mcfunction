execute store result score @s collection_offer_shift run random value 1..100
#普通50%：10件藏品各占5%
execute if score @s collection_offer_shift matches 1..5 run scoreboard players set @s collection_offer 1
execute if score @s collection_offer_shift matches 6..10 run scoreboard players set @s collection_offer 2
execute if score @s collection_offer_shift matches 11..15 run scoreboard players set @s collection_offer 4
execute if score @s collection_offer_shift matches 16..20 run scoreboard players set @s collection_offer 5
execute if score @s collection_offer_shift matches 21..25 run scoreboard players set @s collection_offer 6
execute if score @s collection_offer_shift matches 26..30 run scoreboard players set @s collection_offer 8
execute if score @s collection_offer_shift matches 31..35 run scoreboard players set @s collection_offer 16
execute if score @s collection_offer_shift matches 36..40 run scoreboard players set @s collection_offer 18
execute if score @s collection_offer_shift matches 41..45 run scoreboard players set @s collection_offer 20
execute if score @s collection_offer_shift matches 46..50 run scoreboard players set @s collection_offer 22
#稀有30%
execute if score @s collection_offer_shift matches 51..54 run scoreboard players set @s collection_offer 3
execute if score @s collection_offer_shift matches 55..58 run scoreboard players set @s collection_offer 9
execute if score @s collection_offer_shift matches 59..62 run scoreboard players set @s collection_offer 13
execute if score @s collection_offer_shift matches 63..66 run scoreboard players set @s collection_offer 15
execute if score @s collection_offer_shift matches 67..69 run scoreboard players set @s collection_offer 17
execute if score @s collection_offer_shift matches 70..72 run scoreboard players set @s collection_offer 19
execute if score @s collection_offer_shift matches 73..75 run scoreboard players set @s collection_offer 21
execute if score @s collection_offer_shift matches 76..78 run scoreboard players set @s collection_offer 23
execute if score @s collection_offer_shift matches 79..80 run scoreboard players set @s collection_offer 24
#史诗15%：5件藏品各占3%
execute if score @s collection_offer_shift matches 81..83 run scoreboard players set @s collection_offer 7
execute if score @s collection_offer_shift matches 84..86 run scoreboard players set @s collection_offer 10
execute if score @s collection_offer_shift matches 87..89 run scoreboard players set @s collection_offer 11
execute if score @s collection_offer_shift matches 90..92 run scoreboard players set @s collection_offer 12
execute if score @s collection_offer_shift matches 93..95 run scoreboard players set @s collection_offer 25
#传奇5%：六件传奇藏品等概率抽取
execute if score @s collection_offer_shift matches 96..100 run function rfm:collection/mysterious/sample_legendary
