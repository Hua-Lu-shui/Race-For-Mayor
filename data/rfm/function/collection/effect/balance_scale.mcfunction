execute unless score @s collection_slot1 matches 42 unless score @s collection_slot2 matches 42 unless score @s collection_slot3 matches 42 unless score @s collection_slot4 matches 42 unless score @s collection_slot5 matches 42 run return 0
scoreboard players set @s collection_effect_value 0
execute if score @s fame = @s economy run scoreboard players set @s collection_effect_value 1
execute if score @s fame = @s welfare run scoreboard players set @s collection_effect_value 1
execute if score @s fame = @s ecology run scoreboard players set @s collection_effect_value 1
execute if score @s economy = @s welfare run scoreboard players set @s collection_effect_value 1
execute if score @s economy = @s ecology run scoreboard players set @s collection_effect_value 1
execute if score @s welfare = @s ecology run scoreboard players set @s collection_effect_value 1
execute unless score @s collection_effect_value matches 1 run return 0
function rfm:collection/trade/select_highest
scoreboard players operation @s collection_highest = @s collection_attr
function rfm:collection/trade/select_lowest
scoreboard players set @s collection_effect_value 0
execute if score @s collection_highest matches 1 unless score @s fame_lock matches 1 run scoreboard players add @s fame 4
execute if score @s collection_highest matches 2 unless score @s economy_lock matches 1 run scoreboard players add @s economy 4
execute if score @s collection_highest matches 3 unless score @s welfare_lock matches 1 run scoreboard players add @s welfare 4
execute if score @s collection_highest matches 4 unless score @s ecology_lock matches 1 run scoreboard players add @s ecology 4
execute if score @s collection_highest matches 1 unless score @s fame_lock matches 1 run scoreboard players set @s collection_effect_value 1
execute if score @s collection_highest matches 2 unless score @s economy_lock matches 1 run scoreboard players set @s collection_effect_value 1
execute if score @s collection_highest matches 3 unless score @s welfare_lock matches 1 run scoreboard players set @s collection_effect_value 1
execute if score @s collection_highest matches 4 unless score @s ecology_lock matches 1 run scoreboard players set @s collection_effect_value 1
execute if score @s collection_lowest matches 1 unless score @s fame_lock matches 1 run scoreboard players add @s fame 4
execute if score @s collection_lowest matches 2 unless score @s economy_lock matches 1 run scoreboard players add @s economy 4
execute if score @s collection_lowest matches 3 unless score @s welfare_lock matches 1 run scoreboard players add @s welfare 4
execute if score @s collection_lowest matches 4 unless score @s ecology_lock matches 1 run scoreboard players add @s ecology 4
execute if score @s collection_lowest matches 1 unless score @s fame_lock matches 1 run scoreboard players set @s collection_effect_value 1
execute if score @s collection_lowest matches 2 unless score @s economy_lock matches 1 run scoreboard players set @s collection_effect_value 1
execute if score @s collection_lowest matches 3 unless score @s welfare_lock matches 1 run scoreboard players set @s collection_effect_value 1
execute if score @s collection_lowest matches 4 unless score @s ecology_lock matches 1 run scoreboard players set @s collection_effect_value 1
execute unless score @s collection_effect_value matches 1 run return 0
function rfm:attribute/lock/enforce
tellraw @s [{"translate":"rfm.text.735288293403","color":"blue","bold":true},{"translate":"rfm.text.684c40fd6969","color":"white"}]
