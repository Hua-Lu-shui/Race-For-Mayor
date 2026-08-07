#计算玩家当前最低属性
scoreboard players operation @s collection_lowest = @s fame
execute if score @s economy < @s collection_lowest run scoreboard players operation @s collection_lowest = @s economy
execute if score @s welfare < @s collection_lowest run scoreboard players operation @s collection_lowest = @s welfare
execute if score @s ecology < @s collection_lowest run scoreboard players operation @s collection_lowest = @s ecology

#以1/2/4/8记录名誉/经济/民生/生态是否并列最低
scoreboard players set @s collection_tie_mask 0
execute if score @s fame = @s collection_lowest run scoreboard players add @s collection_tie_mask 1
execute if score @s economy = @s collection_lowest run scoreboard players add @s collection_tie_mask 2
execute if score @s welfare = @s collection_lowest run scoreboard players add @s collection_tie_mask 4
execute if score @s ecology = @s collection_lowest run scoreboard players add @s collection_tie_mask 8
function rfm:collection/effect/select_from_mask
scoreboard players operation @s collection_lowest = @s collection_effect_pick
