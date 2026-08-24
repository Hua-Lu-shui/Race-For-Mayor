#主动刷新只允许在第2至4回合的办公室交易阶段进行
execute unless score #phase phase matches 1 run return 0
execute unless score #waiting next_round_ready matches 1 run return run tellraw @s {"text":"你已经离开办公室交易阶段，无法刷新藏品。","color":"red"}
execute unless score #round round matches 2..4 run return run tellraw @s {"text":"神秘人的交易期限已经结束。","color":"red"}
function rfm:collection/trade/validate_location
execute unless score #confirm_valid collection_target matches 1 run return run tellraw @s {"text":"请靠近神秘人刷新藏品。","color":"red"}
execute unless score @s collection_view_round = #round round run return run tellraw @s {"text":"请先右键神秘人，查看本回合的藏品与价格。","color":"red"}
execute if score @s collection_trade_round = #round round run return run tellraw @s {"text":"你本回合已经完成交易，不能再刷新藏品。","color":"red"}
execute if score @s collection_refresh_count matches 3.. run return run tellraw @s {"text":"你本局的 3 次主动刷新机会已经用完。","color":"red"}
return run function rfm:collection/mysterious/confirm_refresh_free
