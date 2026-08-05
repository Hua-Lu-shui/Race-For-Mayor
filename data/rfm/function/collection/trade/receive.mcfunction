execute if score @s collection_target matches 1 run scoreboard players operation @s collection_slot1 = @s collection_offer
execute if score @s collection_target matches 2 run scoreboard players operation @s collection_slot2 = @s collection_offer
#非医生始终只有第一槽，防止职业切换后残留第二件藏品
execute unless score @s candidate matches 8 run scoreboard players set @s collection_slot2 0
function rfm:attribute/minimum
function rfm:collection/deliver_with_clock
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.2
tellraw @s [{"text":"交易完成。新藏品已替换到快捷栏，并将持续生效。","color":"green"}]

