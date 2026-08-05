execute unless score #phase phase matches 1 run return 0
execute unless score #waiting next_round_ready matches 1 run return 0
execute unless score #round round matches 2..4 run return 0
execute unless score @s candidate matches 8 run return 0
function rfm:collection/mysterious/configure_offer
execute if score @s collection_attr matches 0 run return run tellraw @s {"text":"这件藏品的交易属性尚未确定。","color":"gray"}
execute if score @s collection_cost matches ..-1 run return run tellraw @s {"text":"这件藏品尚未开放交易。","color":"gray"}
scoreboard players set @s collection_target 1
function rfm:collection/trade/pay
