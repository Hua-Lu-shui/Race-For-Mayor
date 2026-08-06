#“带批注的档案”：在决策方案修改属性前保存四项属性
execute unless score @s collection_slot1 matches 4 unless score @s collection_slot2 matches 4 run return 0
function rfm:attribute/lock/enforce
scoreboard players operation @s collection_fame_before = @s fame
scoreboard players operation @s collection_economy_before = @s economy
scoreboard players operation @s collection_welfare_before = @s welfare
scoreboard players operation @s collection_ecology_before = @s ecology
