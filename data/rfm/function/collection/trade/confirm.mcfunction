#交易只允许在第二回合后的三回合期限内、办公室等待下一回合时进行
execute unless score #phase phase matches 1 run return 0
execute unless score #waiting next_round_ready matches 1 run return run tellraw @s {"text":"只有回合结束、准备时钟发放后才能交易藏品。","color":"red"}
execute unless score #round round matches 2..4 run return run tellraw @s {"text":"神秘人的交易期限已经结束。","color":"red"}
execute unless entity @e[type=minecraft:interaction,tag=rfm_collection_interaction,scores={room=1..}] run return 0
function rfm:collection/mysterious/configure_offer
execute if score @s collection_attr matches 0 run return run tellraw @s {"text":"这件藏品的交易属性尚未确定，暂时无法交易。","color":"gray"}
execute if score @s collection_cost matches ..-1 run return run tellraw @s {"text":"这件藏品的效果与价格尚未确定，暂时无法交易。","color":"gray"}

#普通身份直接以新藏品替换第一槽；医生空槽优先，两个槽都满时由玩家选择替换哪件
execute unless score @s candidate matches 8 run scoreboard players set @s collection_target 1
execute if score @s candidate matches 8 if score @s collection_slot1 matches 0 run scoreboard players set @s collection_target 1
execute if score @s candidate matches 8 unless score @s collection_slot1 matches 0 if score @s collection_slot2 matches 0 run scoreboard players set @s collection_target 2
execute if score @s candidate matches 8 unless score @s collection_slot1 matches 0 unless score @s collection_slot2 matches 0 run return run function rfm:collection/trade/choose_replace
function rfm:collection/trade/pay
