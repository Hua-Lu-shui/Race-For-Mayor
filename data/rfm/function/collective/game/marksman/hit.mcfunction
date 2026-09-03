advancement revoke @s only rfm:marksman_hit
execute unless score #selected_game group_game matches 5 run return 0
execute unless score #group_state group_state matches 1 run return 0
execute unless entity @s[tag=rfm_participant,scores={group_finished=0}] run return 0
tag @s add rfm_marksman_pending
