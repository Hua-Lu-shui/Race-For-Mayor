#主动刷新只允许在第2至4回合的办公室交易阶段进行
execute unless score #phase phase matches 1 run return 0
execute unless score #waiting next_round_ready matches 1 run return run tellraw @s {"text":"你已经离开办公室交易阶段，无法刷新藏品。","color":"red"}
execute unless score #round round matches 2..4 run return run tellraw @s {"text":"神秘人的交易期限已经结束。","color":"red"}
function rfm:collection/trade/validate_location
execute unless score #confirm_valid collection_target matches 1 run return run tellraw @s {"text":"请靠近神秘人刷新藏品。","color":"red"}
execute unless score @s collection_view_round = #round round run return run tellraw @s {"text":"请先右键神秘人，查看本回合的藏品与价格。","color":"red"}
execute if score @s collection_trade_round = #round round run return run tellraw @s {"text":"你本回合已经完成交易，不能再刷新藏品。","color":"red"}
execute if score @s collection_refresh_count matches 3.. run return run tellraw @s {"text":"你本局的 3 次主动刷新机会已经用完。","color":"red"}

#三次主动刷新的所有属性花费依次为2、4、8
scoreboard players set @s collection_refresh_cost 0
execute if score @s collection_refresh_count matches 0 run scoreboard players set @s collection_refresh_cost 2
execute if score @s collection_refresh_count matches 1 run scoreboard players set @s collection_refresh_cost 4
execute if score @s collection_refresh_count matches 2 run scoreboard players set @s collection_refresh_cost 8
execute unless score @s collection_refresh_cost matches 2.. run return run tellraw @s {"text":"主动刷新次数状态异常，本次刷新已取消。","color":"red"}
execute unless score @s fame >= @s collection_refresh_cost run return run tellraw @s {"text":"名誉不足，无法主动刷新藏品。","color":"red"}
execute unless score @s economy >= @s collection_refresh_cost run return run tellraw @s {"text":"经济不足，无法主动刷新藏品。","color":"red"}
execute unless score @s welfare >= @s collection_refresh_cost run return run tellraw @s {"text":"民生不足，无法主动刷新藏品。","color":"red"}
execute unless score @s ecology >= @s collection_refresh_cost run return run tellraw @s {"text":"生态不足，无法主动刷新藏品。","color":"red"}

scoreboard players operation @s fame -= @s collection_refresh_cost
scoreboard players operation @s economy -= @s collection_refresh_cost
scoreboard players operation @s welfare -= @s collection_refresh_cost
scoreboard players operation @s ecology -= @s collection_refresh_cost
scoreboard players add @s collection_refresh_count 1
function rfm:collection/mysterious/refresh_one
playsound minecraft:entity.villager.trade master @s ~ ~ ~ 0.8 1.15
tellraw @s [{"text":"你花费了所有属性 ","color":"gray"},{"score":{"name":"@s","objective":"collection_refresh_cost"},"color":"red","bold":true},{"text":"，神秘人换上了新的藏品。","color":"gray"}]
function rfm:collection/mysterious/show_offer
