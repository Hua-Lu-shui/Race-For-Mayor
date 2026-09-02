execute if score #round round matches 2.. as @a[tag=rfm_participant] run scoreboard players operation @s previous_action_player = @s action_player
scoreboard players set @a[tag=rfm_participant] action_player 0
scoreboard players set @a[tag=rfm_participant] action_task 0
scoreboard players set @a[tag=rfm_participant] action_mode 0
scoreboard players set @a[tag=rfm_participant] action_role 0
scoreboard players set @a[tag=rfm_participant] action_order 0
scoreboard players set @a[tag=rfm_participant] decision_task 0
scoreboard players set @a[tag=rfm_participant] attribute_choice 0
scoreboard players set @a[tag=rfm_participant] action_attribute_choice 0
scoreboard players set @a[tag=rfm_participant] action_attribute_option_1 0
scoreboard players set @a[tag=rfm_participant] action_attribute_option_2 0
scoreboard players set @a[tag=rfm_participant] action_attribute_option_3 0
scoreboard players set @a[tag=rfm_participant] action_attribute_missing 0
scoreboard players set #current_action action_order 0
scoreboard players set @a[tag=rfm_participant] speech_state 0
scoreboard players set @a[tag=rfm_participant] visit_state 0
scoreboard players set @a[tag=rfm_participant] photo_state 0
scoreboard players set @a[tag=rfm_participant] qa_state 0
scoreboard players set @a[tag=rfm_participant] cheer_state 0
scoreboard players set @a[tag=rfm_participant] market_state 0
scoreboard players set @a[tag=rfm_participant] negotiation_state 0
scoreboard players set @a[tag=rfm_participant] audit_state 0
scoreboard players set @a[tag=rfm_participant] supply_state 0
scoreboard players set @a[tag=rfm_participant] employment_state 0
scoreboard players set @a[tag=rfm_participant] hospital_state 0
scoreboard players set @a[tag=rfm_participant] fitness_state 0
scoreboard players set @a[tag=rfm_participant] exercise_state 0
scoreboard players set @a[tag=rfm_participant] bus_state 0
scoreboard players set @a[tag=rfm_participant] cooking_state 0
scoreboard players set @a[tag=rfm_participant] emission_state 0
scoreboard players set @a[tag=rfm_participant] sample_state 0
scoreboard players set @a[tag=rfm_participant] park_state 0
scoreboard players set @a[tag=rfm_participant] trash_state 0
scoreboard players set @a[tag=rfm_participant] energy_state 0

execute store result score #player_count player_count run execute if entity @a[tag=rfm_participant]
scoreboard players set #action_quota action_quota 0
execute if score #player_count player_count matches 2..5 run scoreboard players set #action_quota action_quota 1
execute if score #player_count player_count matches 6..8 run scoreboard players set #action_quota action_quota 2

scoreboard players add @a[tag=rfm_participant] action_draw_count 0
function rfm:task/action/select_fair_players

function rfm:task/action/select_mode
function rfm:task/action/sequence/assign_order

tellraw @a[tag=rfm_participant,scores={action_role=1}] [{"translate":"rfm.text.8036f5f7f2d0","color":"white"},{"translate":"rfm.text.995a081da711","color":"#67D5FF","bold":true},{"translate":"rfm.text.1ef6ebc28f49","color":"white"},{"translate":"rfm.text.1a2c4a752d7c","color":"#67D5FF","bold":true},{"text":"。","color":"white"}]
