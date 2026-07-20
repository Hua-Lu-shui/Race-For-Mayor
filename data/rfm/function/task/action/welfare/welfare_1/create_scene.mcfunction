#创建民生行动任务1的临时社区医院场地
fill 748 -61 96 772 -61 116 minecraft:smooth_quartz replace
fill 748 -60 96 772 -56 96 minecraft:white_concrete replace
fill 748 -60 116 772 -57 116 minecraft:light_gray_concrete replace
fill 748 -60 97 748 -57 115 minecraft:white_concrete replace
fill 772 -60 97 772 -57 115 minecraft:white_concrete replace

#三个分诊窗口及对应投递箱：后墙和柜台之间为工作人员站位
fill 750 -60 99 754 -56 99 minecraft:red_concrete replace
fill 750 -60 101 754 -60 101 minecraft:red_concrete replace
fill 758 -60 99 762 -56 99 minecraft:yellow_concrete replace
fill 758 -60 101 762 -60 101 minecraft:yellow_concrete replace
fill 766 -60 99 770 -56 99 minecraft:lime_concrete replace
fill 766 -60 101 770 -60 101 minecraft:lime_concrete replace
setblock 752 -60 103 minecraft:chest[facing=south,type=single] replace
setblock 760 -60 103 minecraft:chest[facing=south,type=single] replace
setblock 768 -60 103 minecraft:chest[facing=south,type=single] replace

#窗口工作人员在场地创建时生成，避免玩家到场后看见实体突然出现
kill @e[type=minecraft:villager,tag=rfm_hospital_staff]
summon minecraft:villager 752 -60 100 {Tags:["rfm_hospital_staff"],NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,VillagerData:{profession:"minecraft:cleric",level:2,type:"minecraft:plains"}}
summon minecraft:villager 760 -60 100 {Tags:["rfm_hospital_staff"],NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,VillagerData:{profession:"minecraft:cleric",level:2,type:"minecraft:plains"}}
summon minecraft:villager 768 -60 100 {Tags:["rfm_hospital_staff"],NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,VillagerData:{profession:"minecraft:cleric",level:2,type:"minecraft:plains"}}
