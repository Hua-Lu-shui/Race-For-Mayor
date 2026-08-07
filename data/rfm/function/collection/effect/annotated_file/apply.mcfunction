#“带批注的档案”：向本次决策中实际增加最多的一项属性追加2点；并列时等概率选择
scoreboard players operation @s collection_delta_fame = @s fame
scoreboard players operation @s collection_delta_fame -= @s collection_fame_before
scoreboard players operation @s collection_delta_economy = @s economy
scoreboard players operation @s collection_delta_economy -= @s collection_economy_before
scoreboard players operation @s collection_delta_welfare = @s welfare
scoreboard players operation @s collection_delta_welfare -= @s collection_welfare_before
scoreboard players operation @s collection_delta_ecology = @s ecology
scoreboard players operation @s collection_delta_ecology -= @s collection_ecology_before

scoreboard players operation @s collection_effect_value = @s collection_delta_fame
execute if score @s collection_delta_economy > @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s collection_delta_economy
execute if score @s collection_delta_welfare > @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s collection_delta_welfare
execute if score @s collection_delta_ecology > @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s collection_delta_ecology
execute unless score @s collection_effect_value matches 1.. run return 0

scoreboard players set @s collection_effect_mask 0
execute if score @s collection_delta_fame = @s collection_effect_value run scoreboard players add @s collection_effect_mask 1
execute if score @s collection_delta_economy = @s collection_effect_value run scoreboard players add @s collection_effect_mask 2
execute if score @s collection_delta_welfare = @s collection_effect_value run scoreboard players add @s collection_effect_mask 4
execute if score @s collection_delta_ecology = @s collection_effect_value run scoreboard players add @s collection_effect_mask 8
function rfm:collection/effect/select_from_mask

execute if score @s collection_effect_pick matches 1 run scoreboard players add @s fame 2
execute if score @s collection_effect_pick matches 2 run scoreboard players add @s economy 2
execute if score @s collection_effect_pick matches 3 run scoreboard players add @s welfare 2
execute if score @s collection_effect_pick matches 4 run scoreboard players add @s ecology 2
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.7 1.1
execute if score @s collection_effect_pick matches 1 run tellraw @s [{"text":"【带批注的档案】","color":"green","bold":true},{"text":"本次决策中名誉增加最多，额外 +2。","color":"white"}]
execute if score @s collection_effect_pick matches 2 run tellraw @s [{"text":"【带批注的档案】","color":"green","bold":true},{"text":"本次决策中经济增加最多，额外 +2。","color":"white"}]
execute if score @s collection_effect_pick matches 3 run tellraw @s [{"text":"【带批注的档案】","color":"green","bold":true},{"text":"本次决策中民生增加最多，额外 +2。","color":"white"}]
execute if score @s collection_effect_pick matches 4 run tellraw @s [{"text":"【带批注的档案】","color":"green","bold":true},{"text":"本次决策中生态增加最多，额外 +2。","color":"white"}]
