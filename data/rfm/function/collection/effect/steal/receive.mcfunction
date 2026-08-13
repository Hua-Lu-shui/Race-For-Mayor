#执行者是偷取者，collection_offer暂存偷到的藏品编号
execute if score @s collection_slot1 matches 0 run scoreboard players operation @s collection_slot1 = @s collection_offer
execute unless score @s collection_slot1 = @s collection_offer if score @s collection_slot2 matches 0 run scoreboard players operation @s collection_slot2 = @s collection_offer
execute unless score @s collection_slot1 = @s collection_offer unless score @s collection_slot2 = @s collection_offer if score @s candidate matches 8 if score @s collection_slot3 matches 0 run scoreboard players operation @s collection_slot3 = @s collection_offer
execute if score @s collection_offer matches 11 run function rfm:collection/effect/amber_record
function rfm:collection/deliver
playsound minecraft:item.bundle.insert master @s ~ ~ ~ 0.7 1.2
tellraw @s [{"text":"【珠宝大盗的手套】","color":"gold","bold":true},{"text":"你偷到了一件新的藏品。","color":"white"}]
