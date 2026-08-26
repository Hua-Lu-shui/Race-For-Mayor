#collection_attr：1名誉、2经济、3民生、4生态、5当前最高属性、6所有属性、7当前最高与最低属性、8当前最低属性
scoreboard players set @s collection_pay_pick 0
execute if score @s collection_attr matches 7 run scoreboard players set @s collection_pay_pick 7
execute if score @s collection_attr matches 5 run function rfm:collection/trade/select_highest
execute if score @s collection_attr matches 7 run function rfm:collection/trade/select_highest
execute if score @s collection_pay_pick matches 7 run scoreboard players operation @s collection_highest = @s collection_attr
execute if score @s collection_pay_pick matches 7 run scoreboard players set @s collection_attr 7
execute if score @s collection_attr matches 7 run function rfm:collection/trade/select_lowest
execute if score @s collection_attr matches 8 run function rfm:collection/trade/select_lowest
execute if score @s collection_offer = @s collection_slot1 run return run function rfm:collection/trade/already_owned
execute if score @s collection_offer = @s collection_slot2 run return run function rfm:collection/trade/already_owned
execute if score @s collection_offer = @s collection_slot3 run return run function rfm:collection/trade/already_owned
execute if score @s collection_offer = @s collection_slot4 run return run function rfm:collection/trade/already_owned
execute if score @s collection_offer = @s collection_slot5 run return run function rfm:collection/trade/already_owned
execute unless score @s collection_attr matches 1..4 unless score @s collection_attr matches 6..8 run return run tellraw @s {"translate":"rfm.text.f139065da3f5","color":"red"}
execute if score @s collection_attr matches 1 unless score @s fame >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.ef42b436f032","color":"red"}
execute if score @s collection_attr matches 2 unless score @s economy >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.479205f880d9","color":"red"}
execute if score @s collection_attr matches 3 unless score @s welfare >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.d04ad5444268","color":"red"}
execute if score @s collection_attr matches 4 unless score @s ecology >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.645deccc20f3","color":"red"}
execute if score @s collection_attr matches 6 unless score @s fame >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.ef42b436f032","color":"red"}
execute if score @s collection_attr matches 6 unless score @s economy >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.479205f880d9","color":"red"}
execute if score @s collection_attr matches 6 unless score @s welfare >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.d04ad5444268","color":"red"}
execute if score @s collection_attr matches 6 unless score @s ecology >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.645deccc20f3","color":"red"}
execute if score @s collection_attr matches 7 if score @s collection_highest = @s collection_lowest run scoreboard players operation @s collection_effect_value = @s collection_cost
execute if score @s collection_attr matches 7 if score @s collection_highest = @s collection_lowest run scoreboard players operation @s collection_effect_value += @s collection_cost
execute if score @s collection_attr matches 7 if score @s collection_highest = @s collection_lowest if score @s collection_highest matches 1 unless score @s fame >= @s collection_effect_value run return run tellraw @s {"translate":"rfm.text.ef42b436f032","color":"red"}
execute if score @s collection_attr matches 7 if score @s collection_highest = @s collection_lowest if score @s collection_highest matches 2 unless score @s economy >= @s collection_effect_value run return run tellraw @s {"translate":"rfm.text.479205f880d9","color":"red"}
execute if score @s collection_attr matches 7 if score @s collection_highest = @s collection_lowest if score @s collection_highest matches 3 unless score @s welfare >= @s collection_effect_value run return run tellraw @s {"translate":"rfm.text.d04ad5444268","color":"red"}
execute if score @s collection_attr matches 7 if score @s collection_highest = @s collection_lowest if score @s collection_highest matches 4 unless score @s ecology >= @s collection_effect_value run return run tellraw @s {"translate":"rfm.text.645deccc20f3","color":"red"}
execute if score @s collection_attr matches 7 if score @s collection_highest matches 1 unless score @s fame >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.ef42b436f032","color":"red"}
execute if score @s collection_attr matches 7 if score @s collection_highest matches 2 unless score @s economy >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.479205f880d9","color":"red"}
execute if score @s collection_attr matches 7 if score @s collection_highest matches 3 unless score @s welfare >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.d04ad5444268","color":"red"}
execute if score @s collection_attr matches 7 if score @s collection_highest matches 4 unless score @s ecology >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.645deccc20f3","color":"red"}
execute if score @s collection_attr matches 7..8 if score @s collection_lowest matches 1 unless score @s fame >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.ef42b436f032","color":"red"}
execute if score @s collection_attr matches 7..8 if score @s collection_lowest matches 2 unless score @s economy >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.479205f880d9","color":"red"}
execute if score @s collection_attr matches 7..8 if score @s collection_lowest matches 3 unless score @s welfare >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.d04ad5444268","color":"red"}
execute if score @s collection_attr matches 7..8 if score @s collection_lowest matches 4 unless score @s ecology >= @s collection_cost run return run tellraw @s {"translate":"rfm.text.645deccc20f3","color":"red"}
execute if score @s collection_attr matches 1 run scoreboard players operation @s fame -= @s collection_cost
execute if score @s collection_attr matches 2 run scoreboard players operation @s economy -= @s collection_cost
execute if score @s collection_attr matches 3 run scoreboard players operation @s welfare -= @s collection_cost
execute if score @s collection_attr matches 4 run scoreboard players operation @s ecology -= @s collection_cost
execute if score @s collection_attr matches 6 run scoreboard players operation @s fame -= @s collection_cost
execute if score @s collection_attr matches 6 run scoreboard players operation @s economy -= @s collection_cost
execute if score @s collection_attr matches 6 run scoreboard players operation @s welfare -= @s collection_cost
execute if score @s collection_attr matches 6 run scoreboard players operation @s ecology -= @s collection_cost
execute if score @s collection_attr matches 7 if score @s collection_highest matches 1 run scoreboard players operation @s fame -= @s collection_cost
execute if score @s collection_attr matches 7 if score @s collection_highest matches 2 run scoreboard players operation @s economy -= @s collection_cost
execute if score @s collection_attr matches 7 if score @s collection_highest matches 3 run scoreboard players operation @s welfare -= @s collection_cost
execute if score @s collection_attr matches 7 if score @s collection_highest matches 4 run scoreboard players operation @s ecology -= @s collection_cost
execute if score @s collection_attr matches 7 if score @s collection_lowest matches 1 run scoreboard players operation @s fame -= @s collection_cost
execute if score @s collection_attr matches 7 if score @s collection_lowest matches 2 run scoreboard players operation @s economy -= @s collection_cost
execute if score @s collection_attr matches 7 if score @s collection_lowest matches 3 run scoreboard players operation @s welfare -= @s collection_cost
execute if score @s collection_attr matches 7 if score @s collection_lowest matches 4 run scoreboard players operation @s ecology -= @s collection_cost
execute if score @s collection_attr matches 8 if score @s collection_lowest matches 1 run scoreboard players operation @s fame -= @s collection_cost
execute if score @s collection_attr matches 8 if score @s collection_lowest matches 2 run scoreboard players operation @s economy -= @s collection_cost
execute if score @s collection_attr matches 8 if score @s collection_lowest matches 3 run scoreboard players operation @s welfare -= @s collection_cost
execute if score @s collection_attr matches 8 if score @s collection_lowest matches 4 run scoreboard players operation @s ecology -= @s collection_cost
function rfm:collection/trade/receive
