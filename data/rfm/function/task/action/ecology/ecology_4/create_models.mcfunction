#生成四个垃圾桶外观；实体无碰撞，玩家仍可直接打开内部箱子
kill @e[type=minecraft:item_display,tag=rfm_trash_bin_model]

#北侧两只箱子朝南
summon minecraft:item_display 244.5 -59.5 100.5 {Tags:["rfm_trash_bin_model","rfm_trash_bin_recyclable"],Rotation:[0.0f,0.0f],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":700002}},item_display:"fixed",transformation:{translation:[0.0f,0.0f,0.0f],scale:[1.75f,1.75f,1.75f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},shadow_radius:0.6f,shadow_strength:0.5f,view_range:64.0f}
summon minecraft:item_display 252.5 -59.5 100.5 {Tags:["rfm_trash_bin_model","rfm_trash_bin_hazardous"],Rotation:[0.0f,0.0f],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":700003}},item_display:"fixed",transformation:{translation:[0.0f,0.0f,0.0f],scale:[1.75f,1.75f,1.75f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},shadow_radius:0.6f,shadow_strength:0.5f,view_range:64.0f}

#南侧两只箱子朝北
summon minecraft:item_display 244.5 -59.5 108.5 {Tags:["rfm_trash_bin_model","rfm_trash_bin_kitchen"],Rotation:[180.0f,0.0f],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":700004}},item_display:"fixed",transformation:{translation:[0.0f,0.0f,0.0f],scale:[1.75f,1.75f,1.75f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},shadow_radius:0.6f,shadow_strength:0.5f,view_range:64.0f}
summon minecraft:item_display 252.5 -59.5 108.5 {Tags:["rfm_trash_bin_model","rfm_trash_bin_other"],Rotation:[180.0f,0.0f],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":700005}},item_display:"fixed",transformation:{translation:[0.0f,0.0f,0.0f],scale:[1.75f,1.75f,1.75f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},shadow_radius:0.6f,shadow_strength:0.5f,view_range:64.0f}
