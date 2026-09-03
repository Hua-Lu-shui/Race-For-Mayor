function rfm:phase/phase1
tag @a remove rfm_participant
scoreboard players add #session game_session 1
scoreboard players operation @a game_session = #session game_session
tag @a add rfm_participant
execute store result score #session_size game_session run execute if entity @a[tag=rfm_participant]
scoreboard players set #choose_time choose_time 0
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] room 0
scoreboard players set @a[tag=rfm_participant] decision_task 0
scoreboard players set @a[tag=rfm_participant] decision_choice 0
scoreboard players set @a[tag=rfm_participant] action_task 0
scoreboard players set @a[tag=rfm_participant] action_player 0
scoreboard players set @a[tag=rfm_participant] attribute_choice 0
scoreboard players set @a[tag=rfm_participant] action_attribute_choice 0
scoreboard players set @a[tag=rfm_participant] next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
scoreboard players set @a[tag=rfm_participant] item_pick 0
scoreboard players set @a[tag=rfm_participant] attribute_total 0
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
tag @a[tag=rfm_participant] remove rfm_settling
tag @a[tag=rfm_participant] remove rfm_vote_tied
tag @a[tag=rfm_participant] remove rfm_random_winner
tag @a[tag=rfm_participant] remove rfm_winner
scoreboard objectives setdisplay sidebar
bossbar set rfm:choose_time visible false
title @a[tag=rfm_participant] clear
title @a[tag=rfm_participant] actionbar {"text":""}
clear @a[tag=rfm_participant] minecraft:clock[minecraft:custom_data={next_round_ready:1}]
clear @a[tag=rfm_participant] minecraft:carved_pumpkin[minecraft:custom_data~{rfm_ending_blackout:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]
gamemode adventure @a[tag=rfm_participant]
scoreboard players set #round round 0
scoreboard players set #abilities settle_state 0
scoreboard players set @a ability_trigger 0
scoreboard players set @a previous_action_player 1
scoreboard players reset * action_draw_count
scoreboard players reset * action_used_fame
scoreboard players reset * action_used_econ
scoreboard players reset * action_used_welf
scoreboard players reset * action_used_eco
scoreboard players reset * dec_used_fame
scoreboard players reset * dec_used_econ
scoreboard players reset * dec_used_welf
scoreboard players reset * dec_used_eco
advancement revoke @a from rfm:title/root
advancement grant @a only rfm:title/root
scoreboard players set @a title_dec_fame 0
scoreboard players set @a title_dec_econ 0
scoreboard players set @a title_dec_welf 0
scoreboard players set @a title_dec_eco 0
scoreboard players set @a title_lead_fame 0
scoreboard players set @a title_lead_econ 0
scoreboard players set @a title_lead_welf 0
scoreboard players set @a title_lead_eco 0
scoreboard players set @a title_item_used 0
scoreboard players set @a title_collection_bought 0
scoreboard players set @a title_trade_count 0
scoreboard players set @a stat_lead_f 0
scoreboard players set @a stat_lead_e 0
scoreboard players set @a stat_lead_w 0
scoreboard players set @a stat_lead_c 0
scoreboard players set @a stat_title_df 0
scoreboard players set @a stat_title_de 0
scoreboard players set @a stat_title_dw 0
scoreboard players set @a stat_title_dc 0
scoreboard players set @a stat_title_lf 0
scoreboard players set @a stat_title_le 0
scoreboard players set @a stat_title_lw 0
scoreboard players set @a stat_title_lc 0
scoreboard players set @a stat_title_sf 0
scoreboard players set @a stat_title_se 0
scoreboard players set @a stat_title_sw 0
scoreboard players set @a stat_title_sc 0
scoreboard players set @a stat_title_ni 0
scoreboard players set @a stat_title_nc 0
scoreboard players set @a stat_title_all 0
scoreboard players set #weight fame_weight 5
scoreboard players set #weight economy_weight 5
scoreboard players set #weight welfare_weight 5
scoreboard players set #weight ecology_weight 5
scoreboard players reset * fame_lock
scoreboard players reset * economy_lock
scoreboard players reset * welfare_lock
scoreboard players reset * ecology_lock
scoreboard players operation 名誉 weight_display = #weight fame_weight
scoreboard players operation 经济 weight_display = #weight economy_weight
scoreboard players operation 民生 weight_display = #weight welfare_weight
scoreboard players operation 生态 weight_display = #weight ecology_weight
scoreboard objectives setdisplay sidebar weight_display
scoreboard players set #current event 0
scoreboard players reset * event_used
scoreboard players set #reveal_fame leader_reveal 0
scoreboard players set #reveal_economy leader_reveal 0
scoreboard players set #reveal_welfare leader_reveal 0
scoreboard players set #reveal_ecology leader_reveal 0
scoreboard players set #group_state group_state 0
scoreboard players set #last_game group_game 0
scoreboard players set #selected_game group_game 0
scoreboard players set #item_1 item_available 1
scoreboard players set #item_2 item_available 1
scoreboard players set #item_3 item_available 1
scoreboard players set #item_4 item_available 1
scoreboard players set #item_5 item_available 1
scoreboard players set #item_6 item_available 1
scoreboard players set #item_7 item_available 1
scoreboard players set #item_8 item_available 1
scoreboard players set #item_9 item_available 1
scoreboard players set #item_10 item_available 1
scoreboard players set #item_11 item_available 1
scoreboard players set #item_12 item_available 1
scoreboard players set #item_13 item_available 1
scoreboard players set #item_14 item_available 1
scoreboard players set #item_15 item_available 1
scoreboard players set #item_16 item_available 1
scoreboard players set #item_17 item_available 1
scoreboard players set #item_18 item_available 1
scoreboard players set #item_19 item_available 1
scoreboard players set #item_20 item_available 1
scoreboard players set #item_21 item_available 1
scoreboard players set #item_22 item_available 1
scoreboard players set #item_23 item_available 1
scoreboard players set #item_24 item_available 1
scoreboard players set @a group_ready 0
scoreboard players set @a group_finished 0
scoreboard players set #current_picker item_selecting 0
scoreboard players set @a group_score 0
scoreboard players set @a group_rank 0
scoreboard players set @a item_held 0
scoreboard players set @a item_selecting 0
scoreboard players set @a swap_pending 0
scoreboard players set @a stat_use_1 0
scoreboard players set @a stat_use_2 0
scoreboard players set @a stat_use_3 0
scoreboard players set @a stat_use_4 0
scoreboard players set @a stat_use_5 0
scoreboard players set @a stat_use_6 0
scoreboard players set @a stat_use_7 0
scoreboard players set @a stat_use_8 0
scoreboard players set @a stat_use_9 0
scoreboard players set @a stat_use_10 0
scoreboard players set @a stat_use_11 0
scoreboard players set @a stat_use_12 0
scoreboard players set @a stat_use_13 0
scoreboard players set @a stat_use_14 0
scoreboard players set @a stat_use_15 0
scoreboard players set @a stat_use_16 0
scoreboard players set @a stat_use_17 0
scoreboard players set @a stat_use_18 0
scoreboard players set @a stat_use_19 0
scoreboard players set @a stat_use_20 0
scoreboard players set @a stat_use_21 0
scoreboard players set @a stat_use_22 0
scoreboard players set @a stat_use_23 0
scoreboard players set @a stat_use_24 0
scoreboard players set @a stat_col_1 0
scoreboard players set @a stat_col_2 0
scoreboard players set @a stat_col_3 0
scoreboard players set @a stat_col_4 0
scoreboard players set @a stat_col_5 0
scoreboard players set @a stat_col_6 0
scoreboard players set @a stat_col_7 0
function rfm:collection/start_game
scoreboard players set #settle_state settle_state 0
scoreboard players set #settle_room settle_room 0
scoreboard players set @a settle_ready 0
scoreboard players set @a settle_clock 0
scoreboard players set @a title_bonus 0
scoreboard players set @a vote_total 0
scoreboard players set @a final_votes 0
clear @a minecraft:written_book[minecraft:custom_data~{rfm_stat_book:1}]
scoreboard players set @a stat_book_room 0
scoreboard players set @a stat_book_fame 0
scoreboard players set @a stat_book_economy 0
scoreboard players set @a stat_book_welfare 0
scoreboard players set @a stat_book_ecology 0
clear @a minecraft:clock[minecraft:custom_data={settlement_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}]
clear @a minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}]
item replace entity @a armor.head with minecraft:carved_pumpkin[minecraft:custom_name='{"translate":"rfm.text.ea82ecabfdaf","color":"black","italic":false}',minecraft:custom_data={rfm_ending_blackout:1}] 1
function rfm:room/assign
schedule function rfm:schedule/room_reveal 20t replace
schedule function rfm:schedule/room_delay 20t
