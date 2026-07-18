#清除上一次任务可能残留的商户和标签
kill @e[type=minecraft:villager,tag=rfm_supply_merchant]
kill @e[type=minecraft:text_display,tag=rfm_supply_label]

#铺设商圈地面和五家店铺
fill 384 -61 96 424 -61 123 minecraft:smooth_stone replace
fill 386 -60 99 390 -60 103 minecraft:spruce_planks replace
fill 394 -60 99 398 -60 103 minecraft:bricks replace
fill 402 -60 99 406 -60 103 minecraft:polished_andesite replace
fill 410 -60 99 414 -60 103 minecraft:quartz_block replace
fill 418 -60 99 422 -60 103 minecraft:white_wool replace

#五个店铺补货木桶
setblock 388 -60 105 minecraft:barrel[facing=south,open=false] replace
setblock 396 -60 105 minecraft:barrel[facing=south,open=false] replace
setblock 404 -60 105 minecraft:barrel[facing=south,open=false] replace
setblock 412 -60 105 minecraft:barrel[facing=south,open=false] replace
setblock 420 -60 105 minecraft:barrel[facing=south,open=false] replace
data remove block 388 -60 105 Items
data remove block 396 -60 105 Items
data remove block 404 -60 105 Items
data remove block 412 -60 105 Items
data remove block 420 -60 105 Items

#临时仓库：十二个相互独立的大箱子
setblock 404 -60 112 minecraft:air replace
setblock 394 -60 112 minecraft:chest[facing=north,type=left,waterlogged=false] replace
setblock 395 -60 112 minecraft:chest[facing=north,type=right,waterlogged=false] replace
setblock 400 -60 112 minecraft:chest[facing=north,type=left,waterlogged=false] replace
setblock 401 -60 112 minecraft:chest[facing=north,type=right,waterlogged=false] replace
setblock 406 -60 112 minecraft:chest[facing=north,type=left,waterlogged=false] replace
setblock 407 -60 112 minecraft:chest[facing=north,type=right,waterlogged=false] replace
setblock 412 -60 112 minecraft:chest[facing=north,type=left,waterlogged=false] replace
setblock 413 -60 112 minecraft:chest[facing=north,type=right,waterlogged=false] replace
setblock 394 -60 116 minecraft:chest[facing=north,type=left,waterlogged=false] replace
setblock 395 -60 116 minecraft:chest[facing=north,type=right,waterlogged=false] replace
setblock 400 -60 116 minecraft:chest[facing=north,type=left,waterlogged=false] replace
setblock 401 -60 116 minecraft:chest[facing=north,type=right,waterlogged=false] replace
setblock 406 -60 116 minecraft:chest[facing=north,type=left,waterlogged=false] replace
setblock 407 -60 116 minecraft:chest[facing=north,type=right,waterlogged=false] replace
setblock 412 -60 116 minecraft:chest[facing=north,type=left,waterlogged=false] replace
setblock 413 -60 116 minecraft:chest[facing=north,type=right,waterlogged=false] replace
setblock 394 -60 120 minecraft:chest[facing=north,type=left,waterlogged=false] replace
setblock 395 -60 120 minecraft:chest[facing=north,type=right,waterlogged=false] replace
setblock 400 -60 120 minecraft:chest[facing=north,type=left,waterlogged=false] replace
setblock 401 -60 120 minecraft:chest[facing=north,type=right,waterlogged=false] replace
setblock 406 -60 120 minecraft:chest[facing=north,type=left,waterlogged=false] replace
setblock 407 -60 120 minecraft:chest[facing=north,type=right,waterlogged=false] replace
setblock 412 -60 120 minecraft:chest[facing=north,type=left,waterlogged=false] replace
setblock 413 -60 120 minecraft:chest[facing=north,type=right,waterlogged=false] replace
data remove block 394 -60 112 Items
data remove block 395 -60 112 Items
data remove block 400 -60 112 Items
data remove block 401 -60 112 Items
data remove block 406 -60 112 Items
data remove block 407 -60 112 Items
data remove block 412 -60 112 Items
data remove block 413 -60 112 Items
data remove block 394 -60 116 Items
data remove block 395 -60 116 Items
data remove block 400 -60 116 Items
data remove block 401 -60 116 Items
data remove block 406 -60 116 Items
data remove block 407 -60 116 Items
data remove block 412 -60 116 Items
data remove block 413 -60 116 Items
data remove block 394 -60 120 Items
data remove block 395 -60 120 Items
data remove block 400 -60 120 Items
data remove block 401 -60 120 Items
data remove block 406 -60 120 Items
data remove block 407 -60 120 Items
data remove block 412 -60 120 Items
data remove block 413 -60 120 Items

#五名商户
summon minecraft:villager 388 -59 101 {Tags:["rfm_supply_merchant"],CustomName:'{"text":"面包店老板","color":"gold"}',CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:farmer",level:5,type:"minecraft:plains"}}
summon minecraft:villager 396 -59 101 {Tags:["rfm_supply_merchant"],CustomName:'{"text":"铁匠铺老板","color":"gray"}',CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:toolsmith",level:5,type:"minecraft:plains"}}
summon minecraft:villager 404 -59 101 {Tags:["rfm_supply_merchant"],CustomName:'{"text":"餐馆老板","color":"yellow"}',CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:butcher",level:5,type:"minecraft:plains"}}
summon minecraft:villager 412 -59 101 {Tags:["rfm_supply_merchant"],CustomName:'{"text":"药剂店老板","color":"aqua"}',CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:cleric",level:5,type:"minecraft:plains"}}
summon minecraft:villager 420 -59 101 {Tags:["rfm_supply_merchant"],CustomName:'{"text":"裁缝店老板","color":"white"}',CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:shepherd",level:5,type:"minecraft:plains"}}

summon minecraft:text_display 403 -57.5 109 {Tags:["rfm_supply_label"],billboard:"center",alignment:"center",text:'{"text":"临时仓库","color":"yellow","bold":true}',background:0,shadow:1b,line_width:240}
