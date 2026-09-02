execute if score @s collection_target matches 1 run scoreboard players operation @s collection_slot1 = @s collection_offer
execute if score @s collection_target matches 2 run scoreboard players operation @s collection_slot2 = @s collection_offer
execute if score @s collection_target matches 3 run scoreboard players operation @s collection_slot3 = @s collection_offer
execute if score @s collection_target matches 4 run scoreboard players operation @s collection_slot4 = @s collection_offer
execute if score @s collection_target matches 5 run scoreboard players operation @s collection_slot5 = @s collection_offer
execute if score @s collection_offer matches 11 run function rfm:collection/effect/amber_record
scoreboard players operation @s collection_trade_round = #round round
scoreboard players set @s title_collection_bought 1
scoreboard players add @s title_trade_count 1
execute if score @s title_trade_count matches 3.. unless entity @s[advancements={rfm:title/trade_tycoon=true}] run function rfm:title/award/trade_tycoon
function rfm:attribute/minimum
function rfm:collection/deliver_with_clock
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.2
scoreboard players set @s collection_offer 0
