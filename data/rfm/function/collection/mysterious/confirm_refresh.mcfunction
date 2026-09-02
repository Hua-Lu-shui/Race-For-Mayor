execute unless score #phase phase matches 1 run return 0
execute unless score #waiting next_round_ready matches 1 run return run tellraw @s {"translate":"rfm.text.5861dbce444c","color":"red"}
execute unless score #round round matches 2..4 run return run tellraw @s {"translate":"rfm.text.06a971cc106a","color":"red"}
function rfm:collection/trade/validate_location
execute unless score #confirm_valid collection_target matches 1 run return run tellraw @s {"translate":"rfm.text.c40d07a07dfa","color":"red"}
execute unless score @s collection_view_round = #round round run return run tellraw @s {"translate":"rfm.text.7438aae3f97d","color":"red"}
execute if score @s collection_trade_round = #round round run return run tellraw @s {"translate":"rfm.text.3c49a5da9a2e","color":"red"}
execute if score @s collection_refresh_count matches 3.. run return run tellraw @s {"translate":"rfm.text.e31f77034038","color":"red"}
return run function rfm:collection/mysterious/confirm_refresh_free
