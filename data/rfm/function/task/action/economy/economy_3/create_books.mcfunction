kill @e[type=minecraft:item_display,tag=rfm_audit_model]
kill @e[type=minecraft:interaction,tag=rfm_audit_interaction]
kill @e[type=minecraft:text_display,tag=rfm_audit_label]

#三本平放的账本模型
summon minecraft:item_display 352 -58.98 104 {Tags:["rfm_audit_model","rfm_audit_model_a"],Rotation:[180.0f,0.0f],item:{id:"minecraft:written_book",count:1},item_display:"ground",transformation:{translation:[0.0f,0.03f,0.0f],scale:[1.35f,1.35f,1.35f],left_rotation:[0.7071f,0.0f,0.0f,0.7071f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:item_display 360 -58.98 104 {Tags:["rfm_audit_model","rfm_audit_model_b"],Rotation:[180.0f,0.0f],item:{id:"minecraft:written_book",count:1},item_display:"ground",transformation:{translation:[0.0f,0.03f,0.0f],scale:[1.35f,1.35f,1.35f],left_rotation:[0.7071f,0.0f,0.0f,0.7071f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:item_display 368 -58.98 104 {Tags:["rfm_audit_model","rfm_audit_model_c"],Rotation:[180.0f,0.0f],item:{id:"minecraft:written_book",count:1},item_display:"ground",transformation:{translation:[0.0f,0.03f,0.0f],scale:[1.35f,1.35f,1.35f],left_rotation:[0.7071f,0.0f,0.0f,0.7071f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

#覆盖在模型上的隐形右键区域
summon minecraft:interaction 352 -59.0 104 {Tags:["rfm_audit_interaction","rfm_audit_book_a"],width:1.5f,height:0.8f,response:1b}
summon minecraft:interaction 360 -59.0 104 {Tags:["rfm_audit_interaction","rfm_audit_book_b"],width:1.5f,height:0.8f,response:1b}
summon minecraft:interaction 368 -59.0 104 {Tags:["rfm_audit_interaction","rfm_audit_book_c"],width:1.5f,height:0.8f,response:1b}

#账本编号
summon minecraft:text_display 352 -58.2 104 {Tags:["rfm_audit_label"],text:'{"text":"A号账本","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
summon minecraft:text_display 360 -58.2 104 {Tags:["rfm_audit_label"],text:'{"text":"B号账本","color":"aqua","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
summon minecraft:text_display 368 -58.2 104 {Tags:["rfm_audit_label"],text:'{"text":"C号账本","color":"green","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
