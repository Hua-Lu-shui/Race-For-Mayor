#恢复所有玩家的游戏模式，并传送回各自办公室
gamemode adventure @a
execute as @a run function rfm:room/return

#玩家返回办公室后统一清除所有行动任务的场地实体，避免玩家看见实体被直接删除
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
kill @e[type=minecraft:text_display,tag=rfm_hospital_label]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{hospital_case:1}}}}]
kill @e[type=minecraft:text_display,tag=rfm_fitness_label]
kill @e[type=minecraft:arrow,x=792,y=-64,z=86,dx=78,dy=19,dz=36]
kill @e[type=minecraft:villager,tag=rfm_exercise_student]
kill @e[type=minecraft:text_display,tag=rfm_exercise_label]
kill @e[type=minecraft:villager,tag=rfm_bus_passenger]
kill @e[type=minecraft:text_display,tag=rfm_bus_label]
kill @e[type=minecraft:interaction,tag=rfm_manhole_interaction]
kill @e[type=minecraft:marker,tag=rfm_manhole_anchor]
kill @e[type=minecraft:text_display,tag=rfm_manhole_label]

#任务阶段全部结束后结算明星的每回合天赋
function rfm:ability/round_end
#回合结束型藏品在领先者统计及属性公示前结算；第10回合则在最终结算前生效
function rfm:collection/effect/before_leaders

title @a title {"text":"本回合结束","color":"green","bold":true}

#取消可能残留的自动开局安排
schedule clear rfm:round/round

#第1至9回合结束后，先播报各属性领先候选人，再进入下一回合全员准备
execute if score #round round matches ..9 run function rfm:round/leader/start

#第10回合结束后，不再发放准备时钟，进入最终结算流程
execute if score #round round matches 10.. run function rfm:ending/prepare
