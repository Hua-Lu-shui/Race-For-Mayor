#五名求职者
summon minecraft:villager 436 -59 100 {Tags:["rfm_employment_applicant"],CustomName:'{"text":"求职者·陈师傅","color":"gold"}',CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:toolsmith",level:5,type:"minecraft:plains"}}
summon minecraft:villager 442 -59 100 {Tags:["rfm_employment_applicant"],CustomName:'{"text":"求职者·林晓","color":"aqua"}',CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:librarian",level:5,type:"minecraft:plains"}}
summon minecraft:villager 448 -59 100 {Tags:["rfm_employment_applicant"],CustomName:'{"text":"求职者·周禾","color":"yellow"}',CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:butcher",level:5,type:"minecraft:plains"}}
summon minecraft:villager 454 -59 100 {Tags:["rfm_employment_applicant"],CustomName:'{"text":"求职者·许安","color":"green"}',CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:cartographer",level:5,type:"minecraft:plains"}}
summon minecraft:villager 460 -59 100 {Tags:["rfm_employment_applicant"],CustomName:'{"text":"求职者·唐雨","color":"light_purple"}',CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:cleric",level:5,type:"minecraft:plains"}}

#求职登记表模型
summon minecraft:item_display 436 -58.9 103 {Tags:["rfm_employment_model","rfm_employment_model_1"],item:{id:"minecraft:paper",count:1},item_display:"ground",transformation:{scale:[1.2f,1.2f,1.2f]}}
summon minecraft:item_display 442 -58.9 103 {Tags:["rfm_employment_model","rfm_employment_model_2"],item:{id:"minecraft:paper",count:1},item_display:"ground",transformation:{scale:[1.2f,1.2f,1.2f]}}
summon minecraft:item_display 448 -58.9 103 {Tags:["rfm_employment_model","rfm_employment_model_3"],item:{id:"minecraft:paper",count:1},item_display:"ground",transformation:{scale:[1.2f,1.2f,1.2f]}}
summon minecraft:item_display 454 -58.9 103 {Tags:["rfm_employment_model","rfm_employment_model_4"],item:{id:"minecraft:paper",count:1},item_display:"ground",transformation:{scale:[1.2f,1.2f,1.2f]}}
summon minecraft:item_display 460 -58.9 103 {Tags:["rfm_employment_model","rfm_employment_model_5"],item:{id:"minecraft:paper",count:1},item_display:"ground",transformation:{scale:[1.2f,1.2f,1.2f]}}

#登记表右键区域
summon minecraft:interaction 436 -59 103 {Tags:["rfm_employment_interaction","rfm_employment_resume_1"],width:1.4f,height:0.9f,response:1b}
summon minecraft:interaction 442 -59 103 {Tags:["rfm_employment_interaction","rfm_employment_resume_2"],width:1.4f,height:0.9f,response:1b}
summon minecraft:interaction 448 -59 103 {Tags:["rfm_employment_interaction","rfm_employment_resume_3"],width:1.4f,height:0.9f,response:1b}
summon minecraft:interaction 454 -59 103 {Tags:["rfm_employment_interaction","rfm_employment_resume_4"],width:1.4f,height:0.9f,response:1b}
summon minecraft:interaction 460 -59 103 {Tags:["rfm_employment_interaction","rfm_employment_resume_5"],width:1.4f,height:0.9f,response:1b}
