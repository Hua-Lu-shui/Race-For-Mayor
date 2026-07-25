#“孤注一掷”仅在军人完美完成行动任务的最高奖励分支中调用
execute unless score @s candidate matches 6 run return 0
function rfm:attribute/lock/enforce
#按任务奖励结算后的四项属性找出最低值
scoreboard players operation @s ability_min = @s fame
execute if score @s economy < @s ability_min run scoreboard players operation @s ability_min = @s economy
execute if score @s welfare < @s ability_min run scoreboard players operation @s ability_min = @s welfare
execute if score @s ecology < @s ability_min run scoreboard players operation @s ability_min = @s ecology
#先记录全部并列最低项，再统一翻倍，避免前一项翻倍影响后续并列判断
scoreboard players set @s ability_fame 0
scoreboard players set @s ability_economy 0
scoreboard players set @s ability_welfare 0
scoreboard players set @s ability_ecology 0
scoreboard players set @s ability_trigger 0
execute if score @s fame = @s ability_min unless score @s fame_lock matches 1 run scoreboard players set @s ability_fame 1
execute if score @s economy = @s ability_min unless score @s economy_lock matches 1 run scoreboard players set @s ability_economy 1
execute if score @s welfare = @s ability_min unless score @s welfare_lock matches 1 run scoreboard players set @s ability_welfare 1
execute if score @s ecology = @s ability_min unless score @s ecology_lock matches 1 run scoreboard players set @s ability_ecology 1
execute if score @s ability_fame matches 1 run scoreboard players operation @s fame += @s fame
execute if score @s ability_economy matches 1 run scoreboard players operation @s economy += @s economy
execute if score @s ability_welfare matches 1 run scoreboard players operation @s welfare += @s welfare
execute if score @s ability_ecology matches 1 run scoreboard players operation @s ecology += @s ecology
execute if score @s ability_fame matches 1 run scoreboard players set @s ability_trigger 1
execute if score @s ability_economy matches 1 run scoreboard players set @s ability_trigger 1
execute if score @s ability_welfare matches 1 run scoreboard players set @s ability_trigger 1
execute if score @s ability_ecology matches 1 run scoreboard players set @s ability_trigger 1
execute if score @s ability_trigger matches 1 run tellraw @a [{"selector":"@s","color":"#B06D3C","bold":true},{"text":" 的【孤注一掷】生效：最低属性翻倍。","color":"gold"}]
function rfm:attribute/minimum
