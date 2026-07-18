#临时街头演讲场地：市民、讲台和按钮在玩家到场前准备完成
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0

fill 480 -61 96 496 -61 114 minecraft:smooth_stone replace
fill 485 -60 110 491 -60 113 minecraft:spruce_planks replace
kill @e[type=minecraft:villager,tag=rfm_speech_citizen]
kill @e[type=minecraft:text_display,tag=rfm_speech_label]

#广场上的市民观众
summon minecraft:villager 482 -60 99 {Tags:["rfm_speech_citizen"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 485 -60 100 {Tags:["rfm_speech_citizen"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 488 -60 99 {Tags:["rfm_speech_citizen"],CustomName:'{"text":"市民代表","color":"aqua"}',CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:librarian",level:2,type:"minecraft:plains"}}
summon minecraft:villager 491 -60 100 {Tags:["rfm_speech_citizen"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 494 -60 99 {Tags:["rfm_speech_citizen"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 484 -60 97 {Tags:["rfm_speech_citizen"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
summon minecraft:villager 492 -60 97 {Tags:["rfm_speech_citizen"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}

setblock 485 -60 107 minecraft:stone_button[face=floor,facing=north,powered=false] replace
setblock 488 -60 107 minecraft:stone_button[face=floor,facing=north,powered=false] replace
setblock 491 -60 107 minecraft:stone_button[face=floor,facing=north,powered=false] replace
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
gamemode spectator @a
tp @a 488 -52 116 180 25
gamemode adventure @s
tp @s 488 -59 110 180 0

tellraw @a [{"text":"【名誉行动】街头演讲","color":"aqua","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"共进行10次临场反应，每次只有3秒。愤怒粒子按“安抚情绪”，烟雾粒子按“补充说明”，音符粒子按“坚定承诺”。","color":"white"}

title @s clear
title @s title {"text":"街头演讲","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={speech_ready:1}] 1
