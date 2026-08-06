#“金属怀表”：回合结束时，将经济与最低属性互换；经济本身最低时不交换
execute unless score @s collection_slot1 matches 3 unless score @s collection_slot2 matches 3 run return 0
function rfm:attribute/lock/enforce
execute if score @s economy_lock matches 1 run return 0

#找出四项属性的实际最低值；经济并列最低也视为“经济已是最低属性”
scoreboard players operation @s collection_effect_value = @s fame
execute if score @s economy < @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s economy
execute if score @s welfare < @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s welfare
execute if score @s ecology < @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s ecology
execute if score @s economy = @s collection_effect_value run return 0

#只从未锁定的并列最低属性中等概率选择一项
scoreboard players set @s collection_effect_mask 0
execute if score @s fame = @s collection_effect_value unless score @s fame_lock matches 1 run scoreboard players add @s collection_effect_mask 1
execute if score @s welfare = @s collection_effect_value unless score @s welfare_lock matches 1 run scoreboard players add @s collection_effect_mask 4
execute if score @s ecology = @s collection_effect_value unless score @s ecology_lock matches 1 run scoreboard players add @s collection_effect_mask 8
execute if score @s collection_effect_mask matches 0 run return 0
scoreboard players set @s collection_effect_pick 0
execute if score @s collection_effect_mask matches 1 run scoreboard players set @s collection_effect_pick 1
execute if score @s collection_effect_mask matches 4 run scoreboard players set @s collection_effect_pick 3
execute if score @s collection_effect_mask matches 8 run scoreboard players set @s collection_effect_pick 4
execute if score @s collection_effect_mask matches 5 store result score @s collection_effect_pick run random value 1..2
execute if score @s collection_effect_mask matches 5 if score @s collection_effect_pick matches 2 run scoreboard players set @s collection_effect_pick 3
execute if score @s collection_effect_mask matches 9 store result score @s collection_effect_pick run random value 1..2
execute if score @s collection_effect_mask matches 9 if score @s collection_effect_pick matches 2 run scoreboard players set @s collection_effect_pick 4
execute if score @s collection_effect_mask matches 12 store result score @s collection_effect_pick run random value 3..4
execute if score @s collection_effect_mask matches 13 store result score @s collection_pay_pick run random value 1..3
execute if score @s collection_effect_mask matches 13 if score @s collection_pay_pick matches 1 run scoreboard players set @s collection_effect_pick 1
execute if score @s collection_effect_mask matches 13 if score @s collection_pay_pick matches 2 run scoreboard players set @s collection_effect_pick 3
execute if score @s collection_effect_mask matches 13 if score @s collection_pay_pick matches 3 run scoreboard players set @s collection_effect_pick 4

#以collection_effect_value暂存交换前的经济
scoreboard players operation @s collection_effect_value = @s economy
execute if score @s collection_effect_pick matches 1 run scoreboard players operation @s economy = @s fame
execute if score @s collection_effect_pick matches 1 run scoreboard players operation @s fame = @s collection_effect_value
execute if score @s collection_effect_pick matches 3 run scoreboard players operation @s economy = @s welfare
execute if score @s collection_effect_pick matches 3 run scoreboard players operation @s welfare = @s collection_effect_value
execute if score @s collection_effect_pick matches 4 run scoreboard players operation @s economy = @s ecology
execute if score @s collection_effect_pick matches 4 run scoreboard players operation @s ecology = @s collection_effect_value
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.7 0.8
execute if score @s collection_effect_pick matches 1 run tellraw @s [{"text":"【金属怀表】","color":"yellow","bold":true},{"text":"回合结束，已将经济与名誉互换。","color":"white"}]
execute if score @s collection_effect_pick matches 3 run tellraw @s [{"text":"【金属怀表】","color":"yellow","bold":true},{"text":"回合结束，已将经济与民生互换。","color":"white"}]
execute if score @s collection_effect_pick matches 4 run tellraw @s [{"text":"【金属怀表】","color":"yellow","bold":true},{"text":"回合结束，已将经济与生态互换。","color":"white"}]
function rfm:attribute/minimum
