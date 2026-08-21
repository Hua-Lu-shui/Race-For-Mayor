#只允许在市长公布后的结束状态执行一次
execute unless score #settle_state settle_state matches 4 run return 0
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set #settle_state settle_state 5
setblock 49 -57 23 minecraft:air

#停止上一局仍可能参与tick判断的全局流程
function rfm:phase/phase0
scoreboard players set #round round 0
scoreboard players set #choose_time choose_time 0
scoreboard players set #waiting next_round_ready 0
scoreboard players set #group_state group_state 0
scoreboard players set @a[tag=rfm_participant] group_finished 0
scoreboard players set #current_picker item_selecting 0
scoreboard players set #settle_room settle_room 0
scoreboard players set #current event 0

#清除玩家的任务、选择、准备及最终结算状态
scoreboard players set @a[tag=rfm_participant] room 0
scoreboard players set @a[tag=rfm_participant] decision_task 0
scoreboard players set @a[tag=rfm_participant] decision_choice 0
scoreboard players set @a[tag=rfm_participant] action_task 0
scoreboard players set @a[tag=rfm_participant] action_player 0
scoreboard players set @a[tag=rfm_participant] attribute_choice 0
scoreboard players set @a[tag=rfm_participant] action_attribute_choice 0
scoreboard players set @a[tag=rfm_participant] next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
scoreboard players set @a[tag=rfm_participant] item_held 0
scoreboard players set @a[tag=rfm_participant] item_selecting 0
scoreboard players set @a[tag=rfm_participant] item_pick 0
scoreboard players set @a[tag=rfm_participant] swap_pending 0
scoreboard players set @a[tag=rfm_participant] collection_slot1 0
scoreboard players set @a[tag=rfm_participant] collection_slot2 0
scoreboard players set @a[tag=rfm_participant] collection_slot3 0
scoreboard players set @a[tag=rfm_participant] collection_offer 0
scoreboard players set @a[tag=rfm_participant] collection_attr 0
scoreboard players set @a[tag=rfm_participant] collection_cost -1
scoreboard players set @a[tag=rfm_participant] collection_target 0
scoreboard players set @a[tag=rfm_participant] collection_previous_offer 0
scoreboard players set @a[tag=rfm_participant] collection_offer_shift 0
scoreboard players set @a[tag=rfm_participant] collection_trade_round -1
scoreboard players set @a[tag=rfm_participant] collection_view_round -1
scoreboard players set @a[tag=rfm_participant] collection_highest 0
scoreboard players set @a[tag=rfm_participant] collection_tie_mask 0
scoreboard players set @a[tag=rfm_participant] collection_pay_pick 0
scoreboard players set @a[tag=rfm_participant] collection_lowest 0
scoreboard players set @a[tag=rfm_participant] collection_steal_roll 0
scoreboard players set @a[tag=rfm_participant] collection_amber_fame 0
scoreboard players set @a[tag=rfm_participant] collection_amber_economy 0
scoreboard players set @a[tag=rfm_participant] collection_amber_welfare 0
scoreboard players set @a[tag=rfm_participant] collection_amber_ecology 0
scoreboard players set @a[tag=rfm_participant] settle_ready 0
scoreboard players set @a[tag=rfm_participant] settle_clock 0
scoreboard players set @a[tag=rfm_participant] title_bonus 0
scoreboard players set @a[tag=rfm_participant] vote_total 0
scoreboard players set @a[tag=rfm_participant] final_votes 0
scoreboard players set @a[tag=rfm_participant] attribute_total 0
scoreboard players set @a[tag=rfm_participant] stat_lead_f 0
scoreboard players set @a[tag=rfm_participant] stat_lead_e 0
scoreboard players set @a[tag=rfm_participant] stat_lead_w 0
scoreboard players set @a[tag=rfm_participant] stat_lead_c 0
scoreboard players set @a[tag=rfm_participant] stat_title_df 0
scoreboard players set @a[tag=rfm_participant] stat_title_de 0
scoreboard players set @a[tag=rfm_participant] stat_title_dw 0
scoreboard players set @a[tag=rfm_participant] stat_title_dc 0
scoreboard players set @a[tag=rfm_participant] stat_title_lf 0
scoreboard players set @a[tag=rfm_participant] stat_title_le 0
scoreboard players set @a[tag=rfm_participant] stat_title_lw 0
scoreboard players set @a[tag=rfm_participant] stat_title_lc 0
scoreboard players set @a[tag=rfm_participant] stat_title_sf 0
scoreboard players set @a[tag=rfm_participant] stat_title_se 0
scoreboard players set @a[tag=rfm_participant] stat_title_sw 0
scoreboard players set @a[tag=rfm_participant] stat_title_sc 0
scoreboard players set @a[tag=rfm_participant] stat_title_ni 0
scoreboard players set @a[tag=rfm_participant] stat_title_nc 0
scoreboard players set @a[tag=rfm_participant] stat_title_all 0
scoreboard players set @a[tag=rfm_participant] stat_use_1 0
scoreboard players set @a[tag=rfm_participant] stat_use_2 0
scoreboard players set @a[tag=rfm_participant] stat_use_3 0
scoreboard players set @a[tag=rfm_participant] stat_use_4 0
scoreboard players set @a[tag=rfm_participant] stat_use_5 0
scoreboard players set @a[tag=rfm_participant] stat_use_6 0
scoreboard players set @a[tag=rfm_participant] stat_use_7 0
scoreboard players set @a[tag=rfm_participant] stat_use_8 0
scoreboard players set @a[tag=rfm_participant] stat_use_9 0
scoreboard players set @a[tag=rfm_participant] stat_use_10 0
scoreboard players set @a[tag=rfm_participant] stat_use_11 0
scoreboard players set @a[tag=rfm_participant] stat_use_12 0
scoreboard players set @a[tag=rfm_participant] stat_use_13 0
scoreboard players set @a[tag=rfm_participant] stat_use_14 0
scoreboard players set @a[tag=rfm_participant] stat_use_15 0
scoreboard players set @a[tag=rfm_participant] stat_use_16 0
scoreboard players set @a[tag=rfm_participant] stat_use_17 0
scoreboard players set @a[tag=rfm_participant] stat_use_18 0
scoreboard players set @a[tag=rfm_participant] stat_use_19 0
scoreboard players set @a[tag=rfm_participant] stat_use_20 0
scoreboard players set @a[tag=rfm_participant] stat_use_21 0
scoreboard players set @a[tag=rfm_participant] stat_use_22 0
scoreboard players set @a[tag=rfm_participant] stat_use_23 0
scoreboard players set @a[tag=rfm_participant] stat_use_24 0
scoreboard players set @a[tag=rfm_participant] stat_col_1 0
scoreboard players set @a[tag=rfm_participant] stat_col_2 0
scoreboard players set @a[tag=rfm_participant] stat_col_3 0
scoreboard players set @a[tag=rfm_participant] stat_col_4 0
scoreboard players set @a[tag=rfm_participant] stat_col_5 0
scoreboard players set @a[tag=rfm_participant] stat_col_6 0
scoreboard players set @a[tag=rfm_participant] stat_col_7 0

#关闭所有行动任务状态，防止返回大厅后继续执行任务tick
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

#重置跨局记录和属性锁定；下一局开始函数会再次初始化完整局内状态
scoreboard players reset * event_used
scoreboard players reset * action_draw_count
scoreboard players reset * action_used_fame
scoreboard players reset * action_used_econ
scoreboard players reset * action_used_welf
scoreboard players reset * action_used_eco
scoreboard players reset * dec_used_fame
scoreboard players reset * dec_used_econ
scoreboard players reset * dec_used_welf
scoreboard players reset * dec_used_eco
scoreboard players reset * fame_lock
scoreboard players reset * economy_lock
scoreboard players reset * welfare_lock
scoreboard players reset * ecology_lock
tag @a[tag=rfm_participant] remove rfm_settling
tag @a[tag=rfm_participant] remove rfm_vote_tied
tag @a[tag=rfm_participant] remove rfm_random_winner
tag @a[tag=rfm_participant] remove rfm_winner

#清理界面和数据包专用物品
scoreboard objectives setdisplay sidebar
bossbar set rfm:choose_time visible false
title @a[tag=rfm_participant] clear
title @a[tag=rfm_participant] actionbar {"text":""}
clear @a[tag=rfm_participant] minecraft:clock[minecraft:custom_data={next_round_ready:1}]
clear @a[tag=rfm_participant] minecraft:clock[minecraft:custom_data={settlement_ready:1}]
clear @a[tag=rfm_participant] minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
clear @a[tag=rfm_participant] minecraft:amethyst_shard[minecraft:custom_data~{rfm_collection:1}]
clear @a[tag=rfm_participant] minecraft:carved_pumpkin[minecraft:custom_data~{rfm_ending_blackout:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_collection:1}}}}]
function rfm:collection/mysterious/cleanup

#恢复大厅默认身份与属性，再将全体玩家送回世界出生点
execute as @a[tag=rfm_participant] run function rfm:initialize/candidate
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 55.5 -50 -17.5 0 0
#玩家点击返回并完成复位后，重新生成下一局的开始游戏告示牌
scoreboard players set #start_pending phase 0
setblock 49 -50 -13 minecraft:cherry_wall_sign[facing=north,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"text":"开始游戏","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 10"}}','""','""']}}
#返回流程完成，状态重新回到未结算
scoreboard players set #settle_state settle_state 0
tag @a[tag=rfm_participant] remove rfm_participant
