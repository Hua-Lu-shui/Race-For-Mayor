execute unless score #phase phase matches 1 run return 0
execute unless score #waiting next_round_ready matches 1 run return run tellraw @s {"text":"你已经离开办公室交易阶段，无法完成这笔交易。","color":"red"}
execute unless score #round round matches 2..4 run return run tellraw @s {"text":"神秘人的交易期限已经结束。","color":"red"}
execute unless score @s candidate matches 8 run return 0
function rfm:collection/trade/validate_location
execute unless score #confirm_valid collection_target matches 1 run return run tellraw @s {"text":"请靠近神秘人进行交易","color":"red"}
execute unless score @s collection_view_round = #round round run return run tellraw @s {"text":"请先右键神秘人，查看本回合刷新后的藏品与价格。","color":"red"}
execute if score @s collection_trade_round = #round round run return run tellraw @s {"text":"你本回合已经交易过一次，请等待下一回合刷新报价。","color":"red"}
function rfm:collection/mysterious/configure_offer
execute if score @s collection_attr matches 0 run return run tellraw @s {"text":"这件藏品的交易属性尚未确定。","color":"gray"}
execute if score @s collection_cost matches ..-1 run return run tellraw @s {"text":"这件藏品尚未开放交易。","color":"gray"}
scoreboard players set @s collection_target 1
function rfm:collection/trade/pay
