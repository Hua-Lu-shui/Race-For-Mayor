execute unless score #selected_game group_game matches 4 run return 0
execute unless score #group_state group_state matches 2 run return 0
scoreboard players set #group_state group_state 1
title @a[tag=rfm_participant,scores={group_finished=0}] title {"translate":"rfm.text.74aa2fe4df39","color":"yellow","bold":true}
function rfm:collective/game/hot_potato/start_round
