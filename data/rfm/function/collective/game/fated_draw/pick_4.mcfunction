advancement revoke @s only rfm:lottery_pick_4
execute unless score #selected_game group_game matches 3 run return 0
execute unless score #group_state group_state matches 1 run return 0
execute unless score @s group_finished matches 0 run return 0
execute unless entity @e[type=minecraft:interaction,tag=rfm_lottery_slot_4,limit=1] run return 0
tag @e[type=minecraft:interaction,tag=rfm_lottery_interaction] remove rfm_lottery_selected
tag @e[type=minecraft:interaction,tag=rfm_lottery_slot_4,limit=1] add rfm_lottery_selected
function rfm:collective/game/fated_draw/draw_selected
