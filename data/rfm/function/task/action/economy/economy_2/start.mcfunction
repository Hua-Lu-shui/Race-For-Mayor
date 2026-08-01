#临时招商洽谈场地：代表和按钮在玩家到场前准备完成
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0

kill @e[type=minecraft:villager,tag=rfm_negotiation_rep]
kill @e[type=minecraft:item_display,tag=rfm_negotiation_model]
kill @e[type=minecraft:text_display,tag=rfm_negotiation_dialogue]
kill @e[type=minecraft:text_display,tag=rfm_negotiation_label]
summon minecraft:villager 142 -58 22 {Tags:["rfm_negotiation_rep"],CustomName:'{"text":"企业代表·维克托","color":"yellow"}',CustomNameVisible:1b,Rotation:[-90f,0f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:none",level:1,type:"minecraft:plains"}}
effect give @e[type=minecraft:villager,tag=rfm_negotiation_rep,limit=1] minecraft:invisibility infinite 0 true
summon minecraft:item_display 142 -57 22 {Tags:["rfm_negotiation_model"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":700001}},item_display:"fixed",transformation:{translation:[0.0f,0.0f,0.0f],scale:[2.0f,2.0f,2.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[type=minecraft:villager,tag=rfm_negotiation_rep,limit=1] at @s run tp @e[type=minecraft:item_display,tag=rfm_negotiation_model,limit=1] ~ ~1 ~ ~180 ~
summon minecraft:text_display 142 -55.4 22 {Tags:["rfm_negotiation_dialogue"],billboard:"center",alignment:"center",background:1073741824,shadow:1b,see_through:0b,line_width:240,text:'{"text":"等待洽谈开始……","color":"gray"}',transformation:{translation:[0.0f,0.0f,0.0f],scale:[0.7f,0.7f,0.7f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

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

gamemode adventure @a
tp @a 144 -58 16 0 0
tp @s 146 -58 22 90 0

tellraw @a [{"text":"【经济行动】招商洽谈","color":"yellow","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"企业代表将依次提出全部9项经营问题，每次任务的问题顺序不同。行动玩家需要选择合适的扶持方案。","color":"white"}

title @s clear
title @s title {"text":"招商洽谈","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={negotiation_ready:1}] 1
