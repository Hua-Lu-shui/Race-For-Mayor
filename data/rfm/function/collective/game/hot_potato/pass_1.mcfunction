advancement revoke @s only rfm:hot_potato_pass_1
execute unless score #selected_game group_game matches 4 run return 0
execute unless score #group_state group_state matches 1 run return 0
execute unless entity @s[tag=rfm_potato_holder,scores={group_finished=0}] run return 0
execute unless entity @a[tag=rfm_participant,tag=!rfm_potato_holder,scores={potato_pos=1,group_finished=0},limit=1] run return 0
tag @a[tag=rfm_participant] remove rfm_hot_potato_target_player
tag @a[tag=rfm_participant,tag=!rfm_potato_holder,scores={potato_pos=1,group_finished=0},limit=1] add rfm_hot_potato_target_player
function rfm:collective/game/hot_potato/transfer
