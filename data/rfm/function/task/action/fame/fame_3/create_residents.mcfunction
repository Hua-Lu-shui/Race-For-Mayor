#清除上一次测试可能残留的居民和交互实体
kill @e[type=minecraft:villager,tag=rfm_photo_resident]
kill @e[type=minecraft:interaction,tag=rfm_photo_interaction]

#八位不同身份的居民
summon minecraft:villager 183 -59 -13 {Tags:["rfm_photo_resident","rfm_photo_resident_1"],CustomName:'{"text":"医生","color":"aqua","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:cleric",level:2,type:"minecraft:plains"}}
summon minecraft:villager 181 -59 -13 {Tags:["rfm_photo_resident","rfm_photo_resident_2"],CustomName:'{"text":"教师","color":"yellow","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:cartographer",level:2,type:"minecraft:plains"}}
summon minecraft:villager 179 -59 -13 {Tags:["rfm_photo_resident","rfm_photo_resident_3"],CustomName:'{"text":"农民","color":"green","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:farmer",level:2,type:"minecraft:plains"}}
summon minecraft:villager 177 -59 -13 {Tags:["rfm_photo_resident","rfm_photo_resident_4"],CustomName:'{"text":"建筑工","color":"gold","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:mason",level:2,type:"minecraft:plains"}}
summon minecraft:villager 183 -59 -16 {Tags:["rfm_photo_resident","rfm_photo_resident_5"],CustomName:'{"text":"商人","color":"gold","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:leatherworker",level:2,type:"minecraft:plains"}}
summon minecraft:villager 181 -59 -16 {Tags:["rfm_photo_resident","rfm_photo_resident_6"],CustomName:'{"text":"图书管理员","color":"light_purple","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:librarian",level:2,type:"minecraft:plains"}}
summon minecraft:villager 179 -59 -16 {Tags:["rfm_photo_resident","rfm_photo_resident_7"],CustomName:'{"text":"渔民","color":"blue","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:fisherman",level:2,type:"minecraft:plains"}}
summon minecraft:villager 177 -59 -16 {Tags:["rfm_photo_resident","rfm_photo_resident_8"],CustomName:'{"text":"普通居民","color":"white","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}

#每位居民叠加一个右键交互实体，并共享居民编号标签
summon minecraft:interaction 183 -59 -13 {Tags:["rfm_photo_interaction","rfm_photo_select_1","rfm_photo_resident_1"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 181 -59 -13 {Tags:["rfm_photo_interaction","rfm_photo_select_2","rfm_photo_resident_2"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 179 -59 -13 {Tags:["rfm_photo_interaction","rfm_photo_select_3","rfm_photo_resident_3"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 177 -59 -13 {Tags:["rfm_photo_interaction","rfm_photo_select_4","rfm_photo_resident_4"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 183 -59 -16 {Tags:["rfm_photo_interaction","rfm_photo_select_5","rfm_photo_resident_5"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 181 -59 -16 {Tags:["rfm_photo_interaction","rfm_photo_select_6","rfm_photo_resident_6"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 179 -59 -16 {Tags:["rfm_photo_interaction","rfm_photo_select_7","rfm_photo_resident_7"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 177 -59 -16 {Tags:["rfm_photo_interaction","rfm_photo_select_8","rfm_photo_resident_8"],width:1.0f,height:2.2f,response:1b}

#五个青色方块上覆盖低矮的右键区域，用于确认居民站位
summon minecraft:interaction 176 -58.9 -29 {Tags:["rfm_photo_interaction","rfm_photo_position_1"],width:1.0f,height:0.3f,response:1b}
summon minecraft:interaction 180 -58.9 -29 {Tags:["rfm_photo_interaction","rfm_photo_position_2"],width:1.0f,height:0.3f,response:1b}
summon minecraft:interaction 184 -58.9 -29 {Tags:["rfm_photo_interaction","rfm_photo_position_3"],width:1.0f,height:0.3f,response:1b}
summon minecraft:interaction 178 -58.9 -25 {Tags:["rfm_photo_interaction","rfm_photo_position_4"],width:1.0f,height:0.3f,response:1b}
summon minecraft:interaction 182 -58.9 -25 {Tags:["rfm_photo_interaction","rfm_photo_position_5"],width:1.0f,height:0.3f,response:1b}
