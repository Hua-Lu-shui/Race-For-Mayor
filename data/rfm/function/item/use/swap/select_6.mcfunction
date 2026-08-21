execute unless score #phase phase matches 1 run return 0
execute unless score @s swap_pending matches 1..4 run return 0
scoreboard players set #swap_target room 6
execute if score @s room = #swap_target room run return run tellraw @s {"text":"不能选择自己。","color":"red"}
execute unless entity @a[tag=rfm_participant,scores={room=6}] run return run tellraw @s {"text":"该玩家当前不在线，请选择其他玩家。","color":"red"}
execute if entity @a[tag=rfm_participant,scores={room=6,candidate=7}] run return run tellraw @s {"text":"律师受【维权意识】保护，不能成为属性互换目标。","color":"light_purple"}
function rfm:item/use/swap/execute
