setblock 123 -58 -66 minecraft:chest[facing=north,type=single] replace
setblock 119 -58 -66 minecraft:chest[facing=north,type=single] replace
setblock 115 -58 -66 minecraft:chest[facing=north,type=single] replace

#窗口工作人员在场地创建时生成，避免玩家到场后看见实体突然出现
kill @e[type=minecraft:villager,tag=rfm_hospital_staff]
kill @e[type=minecraft:item_display,tag=rfm_hospital_staff]
summon minecraft:item_display 123 -57 -65 {Tags:["rfm_hospital_staff"],Rotation:[0.0f,0.0f],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":700008}},item_display:"fixed",transformation:{translation:[0.0f,0.0f,0.0f],scale:[2.0f,2.0f,2.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},view_range:64.0f}
summon minecraft:item_display 119 -57 -65 {Tags:["rfm_hospital_staff"],Rotation:[0.0f,0.0f],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":700009}},item_display:"fixed",transformation:{translation:[0.0f,0.0f,0.0f],scale:[2.0f,2.0f,2.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},view_range:64.0f}
summon minecraft:item_display 115 -57 -65 {Tags:["rfm_hospital_staff"],Rotation:[0.0f,0.0f],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":700010}},item_display:"fixed",transformation:{translation:[0.0f,0.0f,0.0f],scale:[2.0f,2.0f,2.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},view_range:64.0f}
