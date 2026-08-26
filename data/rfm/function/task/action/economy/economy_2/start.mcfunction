#招商洽谈场地
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0

kill @e[type=minecraft:villager,tag=rfm_negotiation_rep]
kill @e[type=minecraft:item_display,tag=rfm_negotiation_model]
kill @e[type=minecraft:text_display,tag=rfm_negotiation_dialogue]
kill @e[type=minecraft:text_display,tag=rfm_negotiation_label]
summon minecraft:villager 142 -58 22 {Tags:["rfm_negotiation_rep"],CustomName:'{"translate":"rfm.text.6e786aaca040","color":"yellow"}',CustomNameVisible:1b,Rotation:[-90f,0f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
effect give @e[type=minecraft:villager,tag=rfm_negotiation_rep,limit=1] minecraft:invisibility infinite 0 true
summon minecraft:item_display 142 -57 22 {Tags:["rfm_negotiation_model"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":700001}},item_display:"fixed",transformation:{translation:[0.0f,0.0f,0.0f],scale:[2.0f,2.0f,2.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[type=minecraft:villager,tag=rfm_negotiation_rep,limit=1] at @s run tp @e[type=minecraft:item_display,tag=rfm_negotiation_model,limit=1] ~ ~1 ~ ~180 ~
summon minecraft:text_display 142 -55.4 22 {Tags:["rfm_negotiation_dialogue"],billboard:"center",alignment:"center",background:1073741824,shadow:1b,see_through:0b,line_width:240,text:'{"translate":"rfm.text.ca4f1923635d","color":"gray"}',transformation:{translation:[0.0f,0.0f,0.0f],scale:[0.7f,0.7f,0.7f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

setblock 144 -57 24 minecraft:stone_button[face=floor,facing=west,powered=false] replace
setblock 144 -57 22 minecraft:stone_button[face=floor,facing=west,powered=false] replace
setblock 144 -57 20 minecraft:stone_button[face=floor,facing=west,powered=false] replace
function rfm:task/action/economy/economy_2/create_labels

scoreboard players set @s negotiation_round 0
scoreboard players set @s negotiation_order 0
scoreboard players set @s negotiation_category 0
scoreboard players set @s negotiation_question 0
scoreboard players set @s negotiation_answer 0
scoreboard players set @s negotiation_correct 0
scoreboard players set @s negotiation_time 0
scoreboard players set @s negotiation_delay 0
scoreboard players set @s negotiation_state 2

gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 144 -58 16 0 0
tp @s 146 -58 22 90 0

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7adf9d90fc9c","color":"yellow","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.3881a269b355","color":"white"},{"translate":"rfm.text.0c803ad54a7d","color":"#FFCB77"},{"translate":"rfm.text.b715a04744cd","color":"white"},{"translate":"rfm.text.995a081da711","color":"#67D5FF","bold":true},{"translate":"rfm.text.662ee5c9abbd","color":"white"},{"translate":"rfm.text.74c1fda3648a","color":"#FFD166","bold":true},{"text":"。","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.4cdf00cba2b6","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={negotiation_ready:1}] 1
