execute store result score @s collection_offer_shift run random value 1..100
#普通50%：十五件普通藏品等概率抽取
execute if score @s collection_offer_shift matches 1..50 run function rfm:collection/mysterious/sample_common
#稀有30%：十一件稀有藏品等概率抽取
execute if score @s collection_offer_shift matches 51..80 run function rfm:collection/mysterious/sample_rare
#史诗15%：七件史诗藏品等概率抽取
execute if score @s collection_offer_shift matches 81..95 run function rfm:collection/mysterious/sample_epic
#传说5%：六件传说藏品等概率抽取
execute if score @s collection_offer_shift matches 96..100 run function rfm:collection/mysterious/sample_legendary
