#“琥珀”：记录当前所有属性，最终结算时若仍持有琥珀则给予
function rfm:attribute/lock/enforce
scoreboard players operation @s collection_amber_fame = @s fame
scoreboard players operation @s collection_amber_economy = @s economy
scoreboard players operation @s collection_amber_welfare = @s welfare
scoreboard players operation @s collection_amber_ecology = @s ecology
tellraw @s [{"translate":"rfm.text.180058cb047a","color":"light_purple","bold":true},{"translate":"rfm.text.844ef743e9c8","color":"white"}]
