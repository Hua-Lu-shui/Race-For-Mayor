#只允许在市长公布后的结束状态执行一次
execute unless score #settle_state settle_state matches 4 run return 0
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
scoreboard players set #settle_state settle_state 5
setblock 49 -56 35 minecraft:air

#停止上一局仍可能参与tick判断的全局流程
function rfm:phase/phase0
scoreboard players set #round round 0
scoreboard players set #choose_time choose_time 0
scoreboard players set #waiting next_round_ready 0
scoreboard players set #group_state group_state 0
scoreboard players set #group_prompt group_prompt 0
scoreboard players set #current_picker item_selecting 0
scoreboard players set #settle_room settle_room 0
scoreboard players set #current event 0

#清除玩家的任务、选择、准备及最终结算状态
scoreboard players set @a room 0
scoreboard players set @a decision_task 0
scoreboard players set @a decision_choice 0
scoreboard players set @a action_task 0
scoreboard players set @a action_player 0
scoreboard players set @a attribute_choice 0
scoreboard players set @a action_attribute_choice 0
scoreboard players set @a next_round_ready 0
scoreboard players set @a next_round_clock 0
scoreboard players set @a item_held 0
scoreboard players set @a item_selecting 0
scoreboard players set @a item_pick 0
scoreboard players set @a swap_pending 0
scoreboard players set @a collection_slot1 0
scoreboard players set @a collection_slot2 0
scoreboard players set @a collection_slot3 0
scoreboard players set @a collection_offer 0
scoreboard players set @a collection_attr 0
scoreboard players set @a collection_cost -1
scoreboard players set @a collection_target 0
scoreboard players set @a collection_previous_offer 0
scoreboard players set @a collection_offer_shift 0
scoreboard players set @a collection_trade_round -1
scoreboard players set @a collection_view_round -1
scoreboard players set @a collection_highest 0
scoreboard players set @a collection_tie_mask 0
scoreboard players set @a collection_pay_pick 0
scoreboard players set @a settle_ready 0
scoreboard players set @a settle_clock 0
scoreboard players set @a title_bonus 0
scoreboard players set @a vote_total 0
scoreboard players set @a final_votes 0
scoreboard players set @a attribute_total 0

#关闭所有行动任务状态，防止返回大厅后继续执行任务tick
scoreboard players set @a speech_state 0
scoreboard players set @a visit_state 0
scoreboard players set @a photo_state 0
scoreboard players set @a qa_state 0
scoreboard players set @a cheer_state 0
scoreboard players set @a market_state 0
scoreboard players set @a negotiation_state 0
scoreboard players set @a audit_state 0
scoreboard players set @a supply_state 0
scoreboard players set @a employment_state 0
scoreboard players set @a hospital_state 0
scoreboard players set @a fitness_state 0
scoreboard players set @a exercise_state 0
scoreboard players set @a bus_state 0
scoreboard players set @a manhole_state 0
scoreboard players set @a emission_state 0
scoreboard players set @a sample_state 0
scoreboard players set @a park_state 0
scoreboard players set @a trash_state 0
scoreboard players set @a energy_state 0

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
tag @a remove rfm_settling
tag @a remove rfm_vote_tied
tag @a remove rfm_random_winner
tag @a remove rfm_winner

#清理界面和数据包专用物品
scoreboard objectives setdisplay sidebar
bossbar set rfm:choose_time visible false
title @a clear
title @a actionbar {"text":""}
clear @a minecraft:clock[minecraft:custom_data={next_round_ready:1}]
clear @a minecraft:clock[minecraft:custom_data={settlement_ready:1}]
clear @a minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
clear @a minecraft:amethyst_shard[minecraft:custom_data~{rfm_collection:1}]
clear @a minecraft:carved_pumpkin[minecraft:custom_data~{rfm_ending_blackout:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_collection:1}}}}]
function rfm:collection/mysterious/cleanup

#恢复大厅默认身份与属性，再将全体玩家送回世界出生点
execute as @a run function rfm:initialize/candidate
gamemode adventure @a
tp @a 55.5 -50 -17.5 0 0
#玩家点击返回并完成复位后，重新生成下一局的开始游戏告示牌
scoreboard players set #start_pending phase 0
setblock 49 -49 -22 minecraft:oak_wall_sign[facing=south,waterlogged=false]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','{"text":"开始游戏","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/function rfm:schedule/start_check"}}','""','""']}}
#返回流程完成，状态重新回到未结算
scoreboard players set #settle_state settle_state 0
