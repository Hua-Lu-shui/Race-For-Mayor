#街头演讲场地
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0

kill @e[type=minecraft:villager,tag=rfm_speech_citizen]
kill @e[type=minecraft:text_display,tag=rfm_speech_label]

#广场上的市民观众
summon minecraft:villager 116 -59 -24 {Tags:["rfm_speech_citizen"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Offers:{Recipes:[]},VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 119 -59 -24 {Tags:["rfm_speech_citizen"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Offers:{Recipes:[]},VillagerData:{profession:"minecraft:librarian",level:2,type:"minecraft:plains"}}
summon minecraft:villager 122 -59 -24 {Tags:["rfm_speech_citizen"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Offers:{Recipes:[]},VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 113 -59 -28 {Tags:["rfm_speech_citizen"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Offers:{Recipes:[]},VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 117 -59 -28 {Tags:["rfm_speech_citizen"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Offers:{Recipes:[]},VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 121 -59 -28 {Tags:["rfm_speech_citizen"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Offers:{Recipes:[]},VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 125 -59 -28 {Tags:["rfm_speech_citizen"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Offers:{Recipes:[]},VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}

setblock 118 -57 -19 minecraft:stone_button[face=floor,facing=north,powered=false] replace
setblock 119 -57 -19 minecraft:stone_button[face=floor,facing=north,powered=false] replace
setblock 120 -57 -19 minecraft:stone_button[face=floor,facing=north,powered=false] replace
function rfm:task/action/fame/fame_1/create_answers

scoreboard players set @s speech_round 0
scoreboard players set @s speech_order 0
scoreboard players set @s speech_category 0
scoreboard players set @s speech_question 0
scoreboard players set @s speech_target 0
scoreboard players set @s speech_answer 0
scoreboard players set @s speech_correct 0
scoreboard players set @s speech_score 0
scoreboard players set @s speech_time 0
scoreboard players set @s speech_delay 0
scoreboard players set @s speech_state 2

#场景准备完成后再将玩家送入广场
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 119 -52 -17 180 30
tp @s 119 -58 -18 180 0

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.fbbcb292e42e","color":"aqua","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.ee78e4bff0ee","color":"white"},{"translate":"rfm.text.3fe7ebf4a42d","color":"#67D5FF","bold":true},{"translate":"rfm.text.676d9965245e","color":"white"},{"translate":"rfm.text.799d31ae53f6","color":"#FFCB77","bold":true},{"translate":"rfm.text.c8ee371bf430","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.4ac31a4c067b","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={speech_ready:1}] 1
