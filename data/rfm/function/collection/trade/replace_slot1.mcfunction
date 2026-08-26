execute unless score #phase phase matches 1 run return 0
execute unless score #waiting next_round_ready matches 1 run return run tellraw @s {"translate":"rfm.text.9a3432b00503","color":"red"}
execute unless score #round round matches 2..4 run return run tellraw @s {"translate":"rfm.text.06a971cc106a","color":"red"}
function rfm:collection/trade/validate_location
execute unless score #confirm_valid collection_target matches 1 run return run tellraw @s {"translate":"rfm.text.4d4119641c0e","color":"red"}
execute unless score @s collection_view_round = #round round run return run tellraw @s {"translate":"rfm.text.7438aae3f97d","color":"red"}
execute if score @s collection_trade_round = #round round run return run tellraw @s {"translate":"rfm.text.706f98c2d7b4","color":"red"}
function rfm:collection/mysterious/configure_offer
execute if score @s collection_attr matches 0 run return run tellraw @s {"translate":"rfm.text.98049219fe2e","color":"gray"}
execute if score @s collection_cost matches ..-1 run return run tellraw @s {"translate":"rfm.text.da697d16d86c","color":"gray"}
scoreboard players set @s collection_target 1
function rfm:collection/trade/pay
