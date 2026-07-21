execute unless score #phase phase matches 1 run return 0
execute unless score @s swap_pending matches 1..4 run return 0
scoreboard players set #swap_target room 2
execute if score @s room = #swap_target room run return run tellraw @s {"text":"不能选择自己。","color":"red"}
execute unless entity @a[scores={room=2}] run return run tellraw @s {"text":"该玩家当前不在线，请选择其他玩家。","color":"red"}
function rfm:item/use/swap/execute
