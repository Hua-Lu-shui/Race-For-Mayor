#临时招商洽谈场地：代表和按钮在玩家到场前准备完成
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0

fill 320 -61 96 336 -61 114 minecraft:smooth_stone replace
kill @e[type=minecraft:villager,tag=rfm_negotiation_rep]
kill @e[type=minecraft:text_display,tag=rfm_negotiation_label]
summon minecraft:villager 328 -60 100 {Tags:["rfm_negotiation_rep"],CustomName:'{"text":"企业代表·维克托","color":"yellow"}',CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:librarian",level:5,type:"minecraft:plains"}}

setblock 324 -60 108 minecraft:stone_button[face=floor,facing=north,powered=false] replace
setblock 328 -60 108 minecraft:stone_button[face=floor,facing=north,powered=false] replace
setblock 332 -60 108 minecraft:stone_button[face=floor,facing=north,powered=false] replace
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
#生成可自由走动的空中观战平台
fill 323 -54 112 333 -54 120 minecraft:light_gray_stained_glass
setblock 328 -54 116 minecraft:sea_lantern
fill 323 -53 112 333 -51 112 minecraft:glass
fill 323 -53 120 333 -51 120 minecraft:glass
fill 323 -53 113 323 -51 119 minecraft:glass
fill 333 -53 113 333 -51 119 minecraft:glass
tp @a 328 -53 116 180 25
tp @s 328 -60 112 180 0

tellraw @a [{"text":"【经济行动】招商洽谈","color":"yellow","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"企业代表将提出3项经营问题。行动玩家需要按下对应的扶持方案按钮。","color":"white"}

title @s clear
title @s title {"text":"招商洽谈","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={negotiation_ready:1}] 1
