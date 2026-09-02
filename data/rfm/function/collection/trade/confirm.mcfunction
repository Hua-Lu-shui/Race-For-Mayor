execute unless score #phase phase matches 1 run return 0
execute unless score #waiting next_round_ready matches 1 run return run tellraw @s {"translate":"rfm.text.9a3432b00503","color":"red"}
execute unless score #round round matches 2..4 run return run tellraw @s {"translate":"rfm.text.06a971cc106a","color":"red"}
function rfm:collection/trade/validate_location
execute unless score #confirm_valid collection_target matches 1 run return run tellraw @s {"translate":"rfm.text.4d4119641c0e","color":"red"}
execute unless score @s collection_view_round = #round round run return run tellraw @s {"translate":"rfm.text.7438aae3f97d","color":"red"}
execute if score @s collection_trade_round = #round round run return run tellraw @s {"translate":"rfm.text.706f98c2d7b4","color":"red"}
function rfm:collection/mysterious/configure_offer
execute if score @s collection_attr matches 0 run return run tellraw @s {"translate":"rfm.text.9ba1e3b73a82","color":"gray"}
execute if score @s collection_cost matches ..-1 run return run tellraw @s {"translate":"rfm.text.b1b446e18510","color":"gray"}

scoreboard players set @s collection_target 0
execute if score @s collection_cap matches 1.. if score @s collection_slot1 matches 0 run scoreboard players set @s collection_target 1
execute unless score @s collection_target matches 1.. if score @s collection_cap matches 2.. if score @s collection_slot2 matches 0 run scoreboard players set @s collection_target 2
execute unless score @s collection_target matches 1.. if score @s collection_cap matches 3.. if score @s collection_slot3 matches 0 run scoreboard players set @s collection_target 3
execute unless score @s collection_target matches 1.. if score @s collection_cap matches 4.. if score @s collection_slot4 matches 0 run scoreboard players set @s collection_target 4
execute unless score @s collection_target matches 1.. if score @s collection_cap matches 5.. if score @s collection_slot5 matches 0 run scoreboard players set @s collection_target 5
execute unless score @s collection_target matches 1.. run return run function rfm:collection/trade/choose_replace
function rfm:collection/trade/pay
