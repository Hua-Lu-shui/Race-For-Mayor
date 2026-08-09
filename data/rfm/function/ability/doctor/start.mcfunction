#“医者仁心”：开局随机藏品使用第一槽，并随第一次准备时钟发放
function rfm:collection/mysterious/sample_offer
scoreboard players operation @s collection_slot1 = @s collection_offer
scoreboard players set @s collection_slot2 0
scoreboard players set @s collection_slot3 0
execute if score @s collection_slot1 matches 11 run function rfm:collection/effect/amber_record
tellraw @s [{"text":"【医者仁心】","color":"#012696","bold":true},{"text":"你已随机获得一件藏品，将与第一回合准备时钟一同发放至快捷栏第一格。","color":"white"}]
