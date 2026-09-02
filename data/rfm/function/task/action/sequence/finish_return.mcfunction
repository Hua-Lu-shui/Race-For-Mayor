effect clear @a[tag=rfm_action_observer_hidden] minecraft:invisibility
tag @a[tag=rfm_action_observer_hidden] remove rfm_action_observer_hidden
gamemode adventure @a[tag=rfm_participant]
execute as @a[tag=rfm_participant] run function rfm:room/return
schedule function rfm:task/action/economy/economy_1/cleanup_items 2t replace

kill @e[type=minecraft:villager,tag=rfm_speech_citizen]
kill @e[type=minecraft:text_display,tag=rfm_speech_label]
kill @e[type=minecraft:villager,tag=rfm_visit_resident]
kill @e[type=minecraft:text_display,tag=rfm_visit_label]
kill @e[type=minecraft:villager,tag=rfm_photo_resident]
kill @e[type=minecraft:interaction,tag=rfm_photo_interaction]
kill @e[type=minecraft:text_display,tag=rfm_photo_label]
kill @e[type=minecraft:villager,tag=rfm_qa_reporter]
kill @e[type=minecraft:text_display,tag=rfm_qa_label]
kill @e[type=minecraft:villager,tag=rfm_cheer_citizen]
kill @e[type=minecraft:text_display,tag=rfm_cheer_label]
kill @e[type=minecraft:item,tag=rfm_cheer_flower]
kill @e[type=minecraft:item,tag=rfm_cheer_egg]
kill @e[type=minecraft:villager,tag=rfm_market_vendor]
kill @e[type=minecraft:villager,tag=rfm_negotiation_rep]
kill @e[type=minecraft:item_display,tag=rfm_negotiation_model]
kill @e[type=minecraft:text_display,tag=rfm_negotiation_dialogue]
kill @e[type=minecraft:text_display,tag=rfm_market_label]
kill @e[type=minecraft:text_display,tag=rfm_negotiation_label]
kill @e[type=minecraft:text_display,tag=rfm_emission_label]
kill @e[type=minecraft:text_display,tag=rfm_sample_label]
kill @e[type=minecraft:text_display,tag=rfm_park_label]
kill @e[type=minecraft:text_display,tag=rfm_trash_label]
kill @e[type=minecraft:item_display,tag=rfm_trash_bin_model]
kill @e[type=minecraft:text_display,tag=rfm_energy_label]
kill @e[type=minecraft:item_display,tag=rfm_audit_model]
kill @e[type=minecraft:interaction,tag=rfm_audit_interaction]
kill @e[type=minecraft:text_display,tag=rfm_audit_label]
kill @e[type=minecraft:villager,tag=rfm_audit_officer]
kill @e[type=minecraft:item_display,tag=rfm_audit_officer]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_audit_book:1}}}}]
kill @e[type=minecraft:villager,tag=rfm_supply_merchant]
kill @e[type=minecraft:text_display,tag=rfm_supply_label]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_supply_item:1}}}}]
kill @e[type=minecraft:villager,tag=rfm_employment_applicant]
kill @e[type=minecraft:villager,tag=rfm_employment_recruiter]
kill @e[type=minecraft:item_display,tag=rfm_employment_model]
kill @e[type=minecraft:interaction,tag=rfm_employment_interaction]
kill @e[type=minecraft:text_display,tag=rfm_employment_label]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_resume:1}}}}]
kill @e[type=minecraft:villager,tag=rfm_hospital_staff]
kill @e[type=minecraft:item_display,tag=rfm_hospital_staff]
kill @e[type=minecraft:text_display,tag=rfm_hospital_label]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{hospital_case:1}}}}]
kill @e[type=minecraft:villager,tag=rfm_exercise_student]
kill @e[type=minecraft:text_display,tag=rfm_exercise_label]
kill @e[type=minecraft:villager,tag=rfm_bus_passenger]
kill @e[type=minecraft:text_display,tag=rfm_bus_label]
kill @e[type=minecraft:interaction,tag=rfm_manhole_interaction]
kill @e[type=minecraft:marker,tag=rfm_manhole_anchor]
kill @e[type=minecraft:text_display,tag=rfm_manhole_label]
kill @e[type=minecraft:villager,tag=rfm_meal_resident]
kill @e[type=minecraft:text_display,tag=rfm_meal_label]
kill @e[type=minecraft:item_display,tag=rfm_cooking_potato]
kill @e[type=minecraft:interaction,tag=rfm_cooking_interaction]
kill @e[type=minecraft:text_display,tag=rfm_cooking_label]
kill @e[type=minecraft:villager,tag=rfm_cooking_judge]

function rfm:ability/round_end
function rfm:collection/effect/before_leaders

title @a[tag=rfm_participant] title {"translate":"rfm.text.e14df014667f","color":"green","bold":true}

schedule clear rfm:round/round

execute if score #round round matches ..9 run function rfm:round/leader/start

execute if score #round round matches 10.. run function rfm:ending/prepare
