execute store result score @s collection_offer_shift run random value 1..100
#普通50%：十一件普通藏品等概率抽取
execute if score @s collection_offer_shift matches 1..50 run function rfm:collection/mysterious/sample_common
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
#史诗15%：六件史诗藏品等概率抽取
execute if score @s collection_offer_shift matches 81..95 run function rfm:collection/mysterious/sample_epic
#传说5%：六件传说藏品等概率抽取
execute if score @s collection_offer_shift matches 96..100 run function rfm:collection/mysterious/sample_legendary
