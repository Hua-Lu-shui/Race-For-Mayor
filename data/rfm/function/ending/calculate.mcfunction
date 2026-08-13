#最终属性票数 = 玩家属性 × 当前对应权重
function rfm:attribute/lock/enforce
function rfm:collection/effect/amber_final
function rfm:collection/effect/fossil_final
scoreboard players operation @s vote_fame = @s fame
scoreboard players operation @s vote_fame *= #weight fame_weight
scoreboard players operation @s vote_economy = @s economy
scoreboard players operation @s vote_economy *= #weight economy_weight
scoreboard players operation @s vote_welfare = @s welfare
scoreboard players operation @s vote_welfare *= #weight welfare_weight
scoreboard players operation @s vote_ecology = @s ecology
scoreboard players operation @s vote_ecology *= #weight ecology_weight
scoreboard players set @s title_bonus 0
scoreboard players set @s vote_total 0
scoreboard players set @s final_votes 0
