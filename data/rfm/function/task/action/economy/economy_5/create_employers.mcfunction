#移除旧版招聘箱，登记表改为直接扔给招聘村民
setblock 436 -59 112 minecraft:air replace
setblock 442 -59 112 minecraft:air replace
setblock 448 -59 112 minecraft:air replace
setblock 454 -59 112 minecraft:air replace
setblock 460 -59 112 minecraft:air replace

#招聘单位负责人
summon minecraft:villager 436 -59 110 {Tags:["rfm_employment_recruiter"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 442 -59 110 {Tags:["rfm_employment_recruiter"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 448 -59 110 {Tags:["rfm_employment_recruiter"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 454 -59 110 {Tags:["rfm_employment_recruiter"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 460 -59 110 {Tags:["rfm_employment_recruiter"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
