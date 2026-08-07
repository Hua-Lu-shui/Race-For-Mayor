#决策类藏品共用：在决策方案修改属性前保存四项属性
function rfm:attribute/lock/enforce
scoreboard players operation @s collection_fame_before = @s fame
scoreboard players operation @s collection_economy_before = @s economy
scoreboard players operation @s collection_welfare_before = @s welfare
scoreboard players operation @s collection_ecology_before = @s ecology
