#collection_attr：1名誉、2经济、3民生、4生态、5当前最高属性、6所有属性
execute if score @s collection_attr matches 5 run function rfm:collection/trade/select_highest
execute if score @s collection_offer = @s collection_slot1 run return run function rfm:collection/trade/already_owned
execute if score @s collection_offer = @s collection_slot2 run return run function rfm:collection/trade/already_owned
execute if score @s collection_offer = @s collection_slot3 run return run function rfm:collection/trade/already_owned
execute unless score @s collection_attr matches 1..4 unless score @s collection_attr matches 6 run return run tellraw @s {"text":"藏品交易属性配置无效，交易已取消。","color":"red"}
execute if score @s collection_attr matches 1 unless score @s fame >= @s collection_cost run return run tellraw @s {"text":"名誉不足，无法完成交易。","color":"red"}
execute if score @s collection_attr matches 2 unless score @s economy >= @s collection_cost run return run tellraw @s {"text":"经济不足，无法完成交易。","color":"red"}
execute if score @s collection_attr matches 3 unless score @s welfare >= @s collection_cost run return run tellraw @s {"text":"民生不足，无法完成交易。","color":"red"}
execute if score @s collection_attr matches 4 unless score @s ecology >= @s collection_cost run return run tellraw @s {"text":"生态不足，无法完成交易。","color":"red"}
execute if score @s collection_attr matches 6 unless score @s fame >= @s collection_cost run return run tellraw @s {"text":"名誉不足，无法完成交易。","color":"red"}
execute if score @s collection_attr matches 6 unless score @s economy >= @s collection_cost run return run tellraw @s {"text":"经济不足，无法完成交易。","color":"red"}
execute if score @s collection_attr matches 6 unless score @s welfare >= @s collection_cost run return run tellraw @s {"text":"民生不足，无法完成交易。","color":"red"}
execute if score @s collection_attr matches 6 unless score @s ecology >= @s collection_cost run return run tellraw @s {"text":"生态不足，无法完成交易。","color":"red"}
execute if score @s collection_attr matches 1 run scoreboard players operation @s fame -= @s collection_cost
execute if score @s collection_attr matches 2 run scoreboard players operation @s economy -= @s collection_cost
execute if score @s collection_attr matches 3 run scoreboard players operation @s welfare -= @s collection_cost
execute if score @s collection_attr matches 4 run scoreboard players operation @s ecology -= @s collection_cost
execute if score @s collection_attr matches 6 run scoreboard players operation @s fame -= @s collection_cost
execute if score @s collection_attr matches 6 run scoreboard players operation @s economy -= @s collection_cost
execute if score @s collection_attr matches 6 run scoreboard players operation @s welfare -= @s collection_cost
execute if score @s collection_attr matches 6 run scoreboard players operation @s ecology -= @s collection_cost
function rfm:collection/trade/receive
