#“得道多助”：找出结算前的最低属性；并列最低时全部视为最低属性
function rfm:attribute/lock/enforce
scoreboard players operation @s ability_min = @s fame
execute if score @s economy < @s ability_min run scoreboard players operation @s ability_min = @s economy
execute if score @s welfare < @s ability_min run scoreboard players operation @s ability_min = @s welfare
execute if score @s ecology < @s ability_min run scoreboard players operation @s ability_min = @s ecology
#先记录最低项，再将原民生数值赋给所有并列最低项
scoreboard players set @s ability_trigger 0
execute if score @s fame = @s ability_min run scoreboard players set @s ability_fame 1
execute unless score @s fame = @s ability_min run scoreboard players set @s ability_fame 0
execute if score @s economy = @s ability_min run scoreboard players set @s ability_economy 1
execute unless score @s economy = @s ability_min run scoreboard players set @s ability_economy 0
execute if score @s welfare = @s ability_min run scoreboard players set @s ability_welfare 1
execute unless score @s welfare = @s ability_min run scoreboard players set @s ability_welfare 0
execute if score @s ecology = @s ability_min run scoreboard players set @s ability_ecology 1
execute unless score @s ecology = @s ability_min run scoreboard players set @s ability_ecology 0
execute if score @s ability_fame matches 1 unless score @s fame_lock matches 1 unless score @s fame = @s welfare run scoreboard players set @s ability_trigger 1
execute if score @s ability_economy matches 1 unless score @s economy_lock matches 1 unless score @s economy = @s welfare run scoreboard players set @s ability_trigger 1
execute if score @s ability_ecology matches 1 unless score @s ecology_lock matches 1 unless score @s ecology = @s welfare run scoreboard players set @s ability_trigger 1
execute if score @s ability_fame matches 1 unless score @s fame_lock matches 1 run scoreboard players operation @s fame = @s welfare
execute if score @s ability_economy matches 1 unless score @s economy_lock matches 1 run scoreboard players operation @s economy = @s welfare
execute if score @s ability_ecology matches 1 unless score @s ecology_lock matches 1 run scoreboard players operation @s ecology = @s welfare
execute if score @s ability_trigger matches 1 run tellraw @a [{"selector":"@s","color":"red","bold":true},{"text":" 的【得道多助】生效：结算时将民生赋予最低属性。","color":"white"}]
