#创建805专用比赛厨房
kill @e[type=minecraft:interaction,tag=rfm_manhole_interaction]
kill @e[type=minecraft:marker,tag=rfm_manhole_anchor]
kill @e[type=minecraft:text_display,tag=rfm_manhole_label]
kill @e[type=minecraft:villager,tag=rfm_meal_resident]
kill @e[type=minecraft:text_display,tag=rfm_meal_label]
kill @e[type=minecraft:item_display,tag=rfm_cooking_potato]
kill @e[type=minecraft:interaction,tag=rfm_cooking_interaction]
kill @e[type=minecraft:text_display,tag=rfm_cooking_label]
kill @e[type=minecraft:villager,tag=rfm_cooking_judge]

#实体展示土豆和唯一点击面；点击面紧贴料理台上的模型
summon minecraft:item_display 263.5 -56.95 -64 {Tags:["rfm_cooking_potato"],item:{id:"minecraft:potato",count:1},item_display:"ground",transformation:{translation:[0.0f,0.0f,0.0f],scale:[1.8f,1.8f,1.8f],left_rotation:[0.7071f,0.0f,0.0f,0.7071f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},shadow_radius:0.3f,shadow_strength:0.6f,view_range:64.0f}
summon minecraft:interaction 263.5 -56.95 -64 {Tags:["rfm_cooking_interaction"],width:1.0f,height:0.9f,response:1b}
