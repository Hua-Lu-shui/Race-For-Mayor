execute unless score #phase phase matches 1 run return 0
execute unless score @s swap_pending matches 1..4 run return 0
scoreboard players set #swap_target room 3
execute if score @s room = #swap_target room run return run tellraw @s {"translate":"rfm.text.5fe28e5c1dc5","color":"red"}
execute unless entity @a[tag=rfm_participant,scores={room=3}] run return run tellraw @s {"translate":"rfm.text.1090a1257b90","color":"red"}
execute if entity @a[tag=rfm_participant,scores={room=3,candidate=7}] run return run tellraw @s {"translate":"rfm.text.3670555c6798","color":"light_purple"}
function rfm:item/use/swap/execute
