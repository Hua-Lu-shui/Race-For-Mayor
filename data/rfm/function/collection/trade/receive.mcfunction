execute if score @s collection_target matches 1 run scoreboard players operation @s collection_slot1 = @s collection_offer
execute if score @s collection_target matches 2 run scoreboard players operation @s collection_slot2 = @s collection_offer
execute if score @s collection_target matches 3 run scoreboard players operation @s collection_slot3 = @s collection_offer
execute if score @s collection_offer matches 11 run function rfm:collection/effect/amber_record
scoreboard players operation @s collection_trade_round = #round round
scoreboard players set @s title_collection_bought 1
#非医生始终没有第三槽，防止切换身份后残留第三件藏品
execute unless score @s candidate matches 8 run scoreboard players set @s collection_slot3 0
function rfm:attribute/minimum
function rfm:collection/deliver_with_clock
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.2
tellraw @s [{"text":"交易完成。新藏品已替换到快捷栏，并将持续生效。","color":"green"}]
