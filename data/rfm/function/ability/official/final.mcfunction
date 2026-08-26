#“与时俱进”：按该公务员结算前的属性找出最高项与最低项
function rfm:attribute/lock/enforce
scoreboard players operation @s ability_max = @s fame
scoreboard players operation @s ability_min = @s fame
execute if score @s economy > @s ability_max run scoreboard players operation @s ability_max = @s economy
execute if score @s welfare > @s ability_max run scoreboard players operation @s ability_max = @s welfare
execute if score @s ecology > @s ability_max run scoreboard players operation @s ability_max = @s ecology
execute if score @s economy < @s ability_min run scoreboard players operation @s ability_min = @s economy
execute if score @s welfare < @s ability_min run scoreboard players operation @s ability_min = @s welfare
execute if score @s ecology < @s ability_min run scoreboard players operation @s ability_min = @s ecology
#最高项并列时随机选择一项
scoreboard players set @s collection_effect_mask 0
execute if score @s fame = @s ability_max run scoreboard players add @s collection_effect_mask 1
execute if score @s economy = @s ability_max run scoreboard players add @s collection_effect_mask 2
execute if score @s welfare = @s ability_max run scoreboard players add @s collection_effect_mask 4
execute if score @s ecology = @s ability_max run scoreboard players add @s collection_effect_mask 8
function rfm:collection/effect/select_from_mask
scoreboard players operation @s ability_max = @s collection_effect_pick
execute if score @s ability_max matches 1 run scoreboard players add #weight fame_weight 2
execute if score @s ability_max matches 2 run scoreboard players add #weight economy_weight 2
execute if score @s ability_max matches 3 run scoreboard players add #weight welfare_weight 2
execute if score @s ability_max matches 4 run scoreboard players add #weight ecology_weight 2
#最低项并列时另行随机选择一项
scoreboard players set @s collection_effect_mask 0
execute if score @s fame = @s ability_min run scoreboard players add @s collection_effect_mask 1
execute if score @s economy = @s ability_min run scoreboard players add @s collection_effect_mask 2
execute if score @s welfare = @s ability_min run scoreboard players add @s collection_effect_mask 4
execute if score @s ecology = @s ability_min run scoreboard players add @s collection_effect_mask 8
function rfm:collection/effect/select_from_mask
execute if score @s collection_effect_pick matches 1 run scoreboard players remove #weight fame_weight 1
execute if score @s collection_effect_pick matches 2 run scoreboard players remove #weight economy_weight 1
execute if score @s collection_effect_pick matches 3 run scoreboard players remove #weight welfare_weight 1
execute if score @s collection_effect_pick matches 4 run scoreboard players remove #weight ecology_weight 1
execute if score @s ability_trigger matches 1 run tellraw @s [{"translate":"rfm.text.1f27b414e59f","color":"#F5F5DC","bold":true},{"translate":"rfm.text.65a8a9fcf489","color":"white"}]
