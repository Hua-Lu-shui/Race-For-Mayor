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
#并列最高或最低的属性全部调整；同一属性同时最高和最低时增减抵消
execute if score @s fame = @s ability_max run scoreboard players add #weight fame_weight 1
execute if score @s economy = @s ability_max run scoreboard players add #weight economy_weight 1
execute if score @s welfare = @s ability_max run scoreboard players add #weight welfare_weight 1
execute if score @s ecology = @s ability_max run scoreboard players add #weight ecology_weight 1
execute if score @s fame = @s ability_min run scoreboard players remove #weight fame_weight 1
execute if score @s economy = @s ability_min run scoreboard players remove #weight economy_weight 1
execute if score @s welfare = @s ability_min run scoreboard players remove #weight welfare_weight 1
execute if score @s ecology = @s ability_min run scoreboard players remove #weight ecology_weight 1
tellraw @s [{"selector":"@s","color":"#D3D3D3","bold":true},{"text":" 的【与时俱进】生效：最高属性对应权重 +1，最低属性对应权重 -1。","color":"white"}]
