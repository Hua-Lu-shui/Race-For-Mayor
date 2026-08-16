#“水晶球”：回合开始时，最高权重对应的属性+5；并列最高时随机选择其中一项
execute unless score @s collection_slot1 matches 7 unless score @s collection_slot2 matches 7 unless score @s collection_slot3 matches 7 run return 0
scoreboard players operation @s collection_highest = #weight fame_weight
execute if score #weight economy_weight > @s collection_highest run scoreboard players operation @s collection_highest = #weight economy_weight
execute if score #weight welfare_weight > @s collection_highest run scoreboard players operation @s collection_highest = #weight welfare_weight
execute if score #weight ecology_weight > @s collection_highest run scoreboard players operation @s collection_highest = #weight ecology_weight
scoreboard players set @s collection_effect_mask 0
execute if score #weight fame_weight = @s collection_highest run scoreboard players add @s collection_effect_mask 1
execute if score #weight economy_weight = @s collection_highest run scoreboard players add @s collection_effect_mask 2
execute if score #weight welfare_weight = @s collection_highest run scoreboard players add @s collection_effect_mask 4
execute if score #weight ecology_weight = @s collection_highest run scoreboard players add @s collection_effect_mask 8
function rfm:collection/effect/select_from_mask
execute if score @s collection_effect_pick matches 1 run scoreboard players add @s fame 5
execute if score @s collection_effect_pick matches 2 run scoreboard players add @s economy 5
execute if score @s collection_effect_pick matches 3 run scoreboard players add @s welfare 5
execute if score @s collection_effect_pick matches 4 run scoreboard players add @s ecology 5
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 0.7 1.1
execute if score @s collection_effect_pick matches 1 run tellraw @s [{"text":"【水晶球】","color":"light_purple","bold":true},{"text":"本回合名誉权重最高，名誉 +5。","color":"white"}]
execute if score @s collection_effect_pick matches 2 run tellraw @s [{"text":"【水晶球】","color":"light_purple","bold":true},{"text":"本回合经济权重最高，经济 +5。","color":"white"}]
execute if score @s collection_effect_pick matches 3 run tellraw @s [{"text":"【水晶球】","color":"light_purple","bold":true},{"text":"本回合民生权重最高，民生 +5。","color":"white"}]
execute if score @s collection_effect_pick matches 4 run tellraw @s [{"text":"【水晶球】","color":"light_purple","bold":true},{"text":"本回合生态权重最高，生态 +5。","color":"white"}]
