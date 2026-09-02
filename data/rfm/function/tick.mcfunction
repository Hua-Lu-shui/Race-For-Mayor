execute as @a unless score @s candidate matches 0.. run function rfm:initialize/candidate
tag @a remove rfm_participant
execute if score #phase phase matches 1..2 as @a if score @s game_session = #session game_session run tag @s add rfm_participant
execute store result score #session_online game_session run execute if entity @a[tag=rfm_participant]
execute positioned 49 -49.5 -18.5 run scoreboard players enable @a[distance=..16] lobby_action
execute if score #settle_state settle_state matches 4 positioned 49 -56 35 run scoreboard players enable @a[distance=..6] ending_return
execute as @a[scores={lobby_action=1..}] at @s run function rfm:lobby/check_action
execute as @a[scores={ending_return=1..}] at @s run function rfm:ending/check_return
execute as @a[tag=rfm_participant,scores={fame_lock=1}] run scoreboard players operation @s fame = @s fame_locked
execute as @a[tag=rfm_participant,scores={economy_lock=1}] run scoreboard players operation @s economy = @s economy_locked
execute as @a[tag=rfm_participant,scores={welfare_lock=1}] run scoreboard players operation @s welfare = @s welfare_locked
execute as @a[tag=rfm_participant,scores={ecology_lock=1}] run scoreboard players operation @s ecology = @s ecology_locked
execute as @a[tag=rfm_participant] run function rfm:attribute/minimum
execute if score #phase phase matches 1 run function rfm:title/check/attributes
execute if score #phase phase matches 1 run function rfm:collection/effect/tick
execute if score #phase phase matches 1 run function rfm:collection/mysterious/tick
execute as @a[tag=rfm_participant,scores={collection_confirm=1..}] run function rfm:collection/trade/check_confirm
execute as @a[tag=rfm_participant,scores={collection_refresh=1..}] run function rfm:collection/mysterious/check_refresh
execute as @a[tag=rfm_participant,scores={collection_replace=1..}] at @s run function rfm:collection/trade/check_replace
execute as @a[tag=rfm_participant,scores={swap_target=1..}] at @s run function rfm:item/use/swap/check_target
execute if score #settle_state settle_state matches 1 run function rfm:ending/ready/check
execute if score #group_state group_state matches 3 run function rfm:collective/prepare_check
execute if score #group_state group_state matches 4 run function rfm:collective/start_ready/check
execute if score #group_state group_state matches 5 as @a[tag=rfm_participant] run function rfm:collective/start_ready/lock_position
execute if score #group_state group_state matches 1 run function rfm:collective/tick
execute if score #waiting next_round_ready matches 1 run function rfm:item/use/check_all
execute if entity @a[tag=rfm_participant,scores={item_selecting=1,item_pick=1..24}] run function rfm:item/select/check
execute if score #choose_time choose_time matches 1.. run function rfm:task/decision/attribute/check
execute if entity @a[tag=rfm_participant,scores={decision_choice=1..3}] run function rfm:task/decision/check
execute if score #choose_time choose_time matches 1.. run function rfm:task/action/attribute/check
execute if score #choose_time choose_time matches 1.. run return 0
execute as @a[tag=rfm_participant,scores={action_task=601..905}] run function rfm:task/action/sequence/lock_before_start
execute if score #waiting next_round_ready matches 1 run function rfm:round/ready/check
execute as @a[tag=rfm_participant,scores={action_task=601..905}] run function rfm:task/action/tick
