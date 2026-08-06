#每位玩家独立随机，因此不同玩家可能看到不同藏品，也可能偶然相同
execute store result score @s collection_offer run random value 1..6

#神秘人固定出现在办公室传送点东侧4格；实体与交互框都记录所属房间
summon minecraft:villager ~4 ~ ~ {Tags:["rfm_collection_mysterious","rfm_collection_new"],CustomName:'{"text":"神秘人","color":"dark_purple","bold":true}',CustomNameVisible:1b,NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,VillagerData:{profession:"minecraft:nitwit",level:1,type:"minecraft:plains"},Offers:{Recipes:[]}}
particle minecraft:large_smoke ~4 ~1 ~ 0.35 0.55 0.35 0.01 24 force @s
playsound minecraft:entity.enderman.teleport master @s ~4 ~1 ~ 0.8 0.75 0
scoreboard players operation @e[type=minecraft:villager,tag=rfm_collection_new,sort=nearest,limit=1,distance=..6] room = @s room
scoreboard players operation @e[type=minecraft:villager,tag=rfm_collection_new,sort=nearest,limit=1,distance=..6] collection_offer = @s collection_offer
tag @e[type=minecraft:villager,tag=rfm_collection_new,sort=nearest,limit=1,distance=..6] remove rfm_collection_new

summon minecraft:interaction ~4 ~ ~ {Tags:["rfm_collection_interaction","rfm_collection_new"],width:1.0f,height:2.0f,response:1b}
scoreboard players operation @e[type=minecraft:interaction,tag=rfm_collection_new,sort=nearest,limit=1,distance=..6] room = @s room
scoreboard players operation @e[type=minecraft:interaction,tag=rfm_collection_new,sort=nearest,limit=1,distance=..6] collection_offer = @s collection_offer
tag @e[type=minecraft:interaction,tag=rfm_collection_new,sort=nearest,limit=1,distance=..6] remove rfm_collection_new
