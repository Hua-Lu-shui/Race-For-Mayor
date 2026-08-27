#所有在线玩家在自己所在位置听到烟花推进鞘翅时的发射音效
execute as @a[tag=rfm_participant] at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1 1
#“皇家项链”由任何候选人完美完成行动任务触发，所有持有者各生效一次
execute as @a[tag=rfm_participant] run function rfm:collection/effect/royal_necklace
#最高奖励分支统一先结算“老旧的战功章”，再结算军人的“孤注一掷”
function rfm:collection/effect/old_war_medal
#“孤注一掷”仅对军人继续执行
execute unless score @s candidate matches 6 run return 0
function rfm:attribute/lock/enforce
#按任务奖励结算后的四项属性找出最低值
scoreboard players operation @s ability_min = @s fame
execute if score @s economy < @s ability_min run scoreboard players operation @s ability_min = @s economy
execute if score @s welfare < @s ability_min run scoreboard players operation @s ability_min = @s welfare
execute if score @s ecology < @s ability_min run scoreboard players operation @s ability_min = @s ecology
#只从未锁定的并列最低属性中等概率选择一项翻倍
scoreboard players set @s collection_effect_mask 0
execute if score @s fame = @s ability_min unless score @s fame_lock matches 1 run scoreboard players add @s collection_effect_mask 1
execute if score @s economy = @s ability_min unless score @s economy_lock matches 1 run scoreboard players add @s collection_effect_mask 2
execute if score @s welfare = @s ability_min unless score @s welfare_lock matches 1 run scoreboard players add @s collection_effect_mask 4
execute if score @s ecology = @s ability_min unless score @s ecology_lock matches 1 run scoreboard players add @s collection_effect_mask 8
execute if score @s collection_effect_mask matches 0 run return 0
function rfm:collection/effect/select_from_mask
execute if score @s collection_effect_pick matches 1 run scoreboard players operation @s fame += @s fame
execute if score @s collection_effect_pick matches 2 run scoreboard players operation @s economy += @s economy
execute if score @s collection_effect_pick matches 3 run scoreboard players operation @s welfare += @s welfare
execute if score @s collection_effect_pick matches 4 run scoreboard players operation @s ecology += @s ecology
tellraw @s [{"translate":"rfm.text.55bce636bc10","color":"#FFA500","bold":true},{"translate":"rfm.text.3707e96d6846","color":"white"}]
function rfm:attribute/minimum
