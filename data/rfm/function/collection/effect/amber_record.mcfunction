#“琥珀”：记录当前所有属性，最终结算时若仍持有琥珀则给予
function rfm:attribute/lock/enforce
scoreboard players operation @s collection_amber_fame = @s fame
scoreboard players operation @s collection_amber_economy = @s economy
scoreboard players operation @s collection_amber_welfare = @s welfare
scoreboard players operation @s collection_amber_ecology = @s ecology
tellraw @s [{"text":"【琥珀】","color":"light_purple","bold":true},{"text":"已记录当前四项属性，将在最终结算时给予。","color":"white"}]
