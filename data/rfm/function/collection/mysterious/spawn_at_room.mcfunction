#执行位置为该玩家room对应的办公室传送坐标；人物模型与交互框都记录所属房间
summon minecraft:item_display ~ ~ ~ {Tags:["rfm_collection_mysterious","rfm_collection_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":700007}},item_display:"fixed",transformation:{translation:[0.0f,0.0f,0.0f],scale:[2.0f,2.0f,2.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},view_range:64.0f}
execute if score @s room matches 1 run data merge entity @e[type=minecraft:item_display,tag=rfm_collection_new,sort=nearest,limit=1,distance=..1] {Rotation:[180.0f,0.0f]}
execute if score @s room matches 2 run data merge entity @e[type=minecraft:item_display,tag=rfm_collection_new,sort=nearest,limit=1,distance=..1] {Rotation:[90.0f,0.0f]}
execute if score @s room matches 3 run data merge entity @e[type=minecraft:item_display,tag=rfm_collection_new,sort=nearest,limit=1,distance=..1] {Rotation:[-90.0f,0.0f]}
execute if score @s room matches 4 run data merge entity @e[type=minecraft:item_display,tag=rfm_collection_new,sort=nearest,limit=1,distance=..1] {Rotation:[90.0f,0.0f]}
execute if score @s room matches 5..6 run data merge entity @e[type=minecraft:item_display,tag=rfm_collection_new,sort=nearest,limit=1,distance=..1] {Rotation:[-90.0f,0.0f]}
execute if score @s room matches 7 run data merge entity @e[type=minecraft:item_display,tag=rfm_collection_new,sort=nearest,limit=1,distance=..1] {Rotation:[0.0f,0.0f]}
execute if score @s room matches 8 run data merge entity @e[type=minecraft:item_display,tag=rfm_collection_new,sort=nearest,limit=1,distance=..1] {Rotation:[-90.0f,0.0f]}
particle minecraft:large_smoke ~ ~1 ~ 0.35 0.55 0.35 0.01 24 force @s
playsound minecraft:entity.enderman.teleport master @s ~ ~1 ~ 0.8 0.75 0
scoreboard players operation @e[type=minecraft:item_display,tag=rfm_collection_new,sort=nearest,limit=1,distance=..1] room = @s room
scoreboard players operation @e[type=minecraft:item_display,tag=rfm_collection_new,sort=nearest,limit=1,distance=..1] collection_offer = @s collection_offer
tag @e[type=minecraft:item_display,tag=rfm_collection_new,sort=nearest,limit=1,distance=..1] remove rfm_collection_new

summon minecraft:interaction ~ ~ ~ {Tags:["rfm_collection_interaction","rfm_collection_new"],width:1.0f,height:2.0f,response:1b}
scoreboard players operation @e[type=minecraft:interaction,tag=rfm_collection_new,sort=nearest,limit=1,distance=..1] room = @s room
scoreboard players operation @e[type=minecraft:interaction,tag=rfm_collection_new,sort=nearest,limit=1,distance=..1] collection_offer = @s collection_offer
tag @e[type=minecraft:interaction,tag=rfm_collection_new,sort=nearest,limit=1,distance=..1] remove rfm_collection_new
