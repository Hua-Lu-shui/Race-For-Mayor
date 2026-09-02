kill @e[type=minecraft:villager,tag=rfm_photo_resident]
kill @e[type=minecraft:interaction,tag=rfm_photo_interaction]

summon minecraft:villager 183 -59 -13 {Tags:["rfm_photo_resident","rfm_photo_resident_1"],CustomName:'{"translate":"rfm.text.552caeb5bd54","color":"aqua","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:cleric",level:2,type:"minecraft:plains"}}
summon minecraft:villager 181 -59 -13 {Tags:["rfm_photo_resident","rfm_photo_resident_2"],CustomName:'{"translate":"rfm.text.aa5533ff4a9d","color":"yellow","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:cartographer",level:2,type:"minecraft:plains"}}
summon minecraft:villager 179 -59 -13 {Tags:["rfm_photo_resident","rfm_photo_resident_3"],CustomName:'{"translate":"rfm.text.231bf85a0359","color":"green","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:farmer",level:2,type:"minecraft:plains"}}
summon minecraft:villager 177 -59 -13 {Tags:["rfm_photo_resident","rfm_photo_resident_4"],CustomName:'{"translate":"rfm.text.e247a421e43b","color":"gold","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:mason",level:2,type:"minecraft:plains"}}
summon minecraft:villager 183 -59 -16 {Tags:["rfm_photo_resident","rfm_photo_resident_5"],CustomName:'{"translate":"rfm.text.df28029e30f5","color":"gold","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:leatherworker",level:2,type:"minecraft:plains"}}
summon minecraft:villager 181 -59 -16 {Tags:["rfm_photo_resident","rfm_photo_resident_6"],CustomName:'{"translate":"rfm.text.204642695179","color":"light_purple","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:librarian",level:2,type:"minecraft:plains"}}
summon minecraft:villager 179 -59 -16 {Tags:["rfm_photo_resident","rfm_photo_resident_7"],CustomName:'{"translate":"rfm.text.b0c5e5ae06cc","color":"blue","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:fisherman",level:2,type:"minecraft:plains"}}
summon minecraft:villager 177 -59 -16 {Tags:["rfm_photo_resident","rfm_photo_resident_8"],CustomName:'{"translate":"rfm.text.de98377dd0ad","color":"white","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}

summon minecraft:interaction 183 -59 -13 {Tags:["rfm_photo_interaction","rfm_photo_select_1","rfm_photo_resident_1"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 181 -59 -13 {Tags:["rfm_photo_interaction","rfm_photo_select_2","rfm_photo_resident_2"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 179 -59 -13 {Tags:["rfm_photo_interaction","rfm_photo_select_3","rfm_photo_resident_3"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 177 -59 -13 {Tags:["rfm_photo_interaction","rfm_photo_select_4","rfm_photo_resident_4"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 183 -59 -16 {Tags:["rfm_photo_interaction","rfm_photo_select_5","rfm_photo_resident_5"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 181 -59 -16 {Tags:["rfm_photo_interaction","rfm_photo_select_6","rfm_photo_resident_6"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 179 -59 -16 {Tags:["rfm_photo_interaction","rfm_photo_select_7","rfm_photo_resident_7"],width:1.0f,height:2.2f,response:1b}
summon minecraft:interaction 177 -59 -16 {Tags:["rfm_photo_interaction","rfm_photo_select_8","rfm_photo_resident_8"],width:1.0f,height:2.2f,response:1b}

summon minecraft:interaction 176 -58.9 -29 {Tags:["rfm_photo_interaction","rfm_photo_position_1"],width:1.0f,height:0.3f,response:1b}
summon minecraft:interaction 180 -58.9 -29 {Tags:["rfm_photo_interaction","rfm_photo_position_2"],width:1.0f,height:0.3f,response:1b}
summon minecraft:interaction 184 -58.9 -29 {Tags:["rfm_photo_interaction","rfm_photo_position_3"],width:1.0f,height:0.3f,response:1b}
summon minecraft:interaction 178 -58.9 -25 {Tags:["rfm_photo_interaction","rfm_photo_position_4"],width:1.0f,height:0.3f,response:1b}
summon minecraft:interaction 182 -58.9 -25 {Tags:["rfm_photo_interaction","rfm_photo_position_5"],width:1.0f,height:0.3f,response:1b}
