scoreboard players set #minimum action_draw_count 2147483647
scoreboard players operation #minimum action_draw_count < @a[tag=rfm_participant,scores={action_player=0}] action_draw_count

tag @a[tag=rfm_participant] remove rfm_action_candidate
execute as @a[tag=rfm_participant,scores={action_player=0}] if score @s action_draw_count = #minimum action_draw_count run tag @s add rfm_action_candidate
execute as @a[tag=rfm_participant,tag=rfm_action_candidate,sort=random,limit=1] if score #action_quota action_quota matches 1.. run function rfm:task/action/pick_player
tag @a[tag=rfm_participant] remove rfm_action_candidate

execute if score #action_quota action_quota matches 1.. unless entity @a[tag=rfm_participant,scores={action_player=0}] run scoreboard players set #action_quota action_quota 0
execute if score #action_quota action_quota matches 1.. run function rfm:task/action/select_fair_players
