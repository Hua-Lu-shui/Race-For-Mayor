#交易只允许在第二回合后的三回合期限内、办公室等待下一回合时进行
execute unless score #phase phase matches 1 run return 0
execute unless score #waiting next_round_ready matches 1 run return run tellraw @s {"text":"你已经离开办公室交易阶段，无法完成这笔交易。","color":"red"}
execute unless score #round round matches 2..4 run return run tellraw @s {"text":"神秘人的交易期限已经结束。","color":"red"}
function rfm:collection/trade/validate_location
execute unless score #confirm_valid collection_target matches 1 run return run tellraw @s {"text":"请靠近神秘人进行交易","color":"red"}
execute unless score @s collection_view_round = #round round run return run tellraw @s {"text":"请先右键神秘人，查看本回合刷新后的藏品与价格。","color":"red"}
execute if score @s collection_trade_round = #round round run return run tellraw @s {"text":"你本回合已经交易过一次，请等待下一回合刷新藏品。","color":"red"}
function rfm:collection/mysterious/configure_offer
execute if score @s collection_attr matches 0 run return run tellraw @s {"text":"这件藏品的交易属性尚未确定，暂时无法交易。","color":"gray"}
execute if score @s collection_cost matches ..-1 run return run tellraw @s {"text":"这件藏品的效果与价格尚未确定，暂时无法交易。","color":"gray"}

#藏品按槽位顺序存放；普通最多两件，医生最多三件，满槽时由玩家选择替换位置
execute if score @s collection_slot1 matches 0 run scoreboard players set @s collection_target 1
execute unless score @s collection_slot1 matches 0 if score @s collection_slot2 matches 0 run scoreboard players set @s collection_target 2
execute if score @s candidate matches 8 unless score @s collection_slot1 matches 0 unless score @s collection_slot2 matches 0 if score @s collection_slot3 matches 0 run scoreboard players set @s collection_target 3
execute unless score @s candidate matches 8 unless score @s collection_slot1 matches 0 unless score @s collection_slot2 matches 0 run return run function rfm:collection/trade/choose_replace
execute if score @s candidate matches 8 unless score @s collection_slot1 matches 0 unless score @s collection_slot2 matches 0 unless score @s collection_slot3 matches 0 run return run function rfm:collection/trade/choose_replace
function rfm:collection/trade/pay
