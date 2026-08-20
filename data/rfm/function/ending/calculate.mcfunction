#最终属性票数 = 玩家属性 × 当前对应权重
function rfm:attribute/lock/enforce
#条件翻倍（史诗） -> 无条件翻倍（传说） -> 属性增加（史诗、稀有）
function rfm:collection/effect/clown_hat
function rfm:collection/effect/fossil_final
function rfm:collection/effect/amber_final
function rfm:collection/effect/expensive_chocolate
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
