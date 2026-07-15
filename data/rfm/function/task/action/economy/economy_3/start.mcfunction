#临时财政办公室场地
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0

fill 344 -61 96 376 -61 114 minecraft:smooth_stone replace
fill 350 -60 103 354 -60 105 minecraft:spruce_planks replace
fill 358 -60 103 362 -60 105 minecraft:spruce_planks replace
fill 366 -60 103 370 -60 105 minecraft:spruce_planks replace

setblock 352 -60 108 minecraft:air replace
setblock 360 -60 108 minecraft:air replace
setblock 368 -60 108 minecraft:air replace
kill @e[type=minecraft:villager,tag=rfm_audit_officer]
summon minecraft:villager 360 -60 108 {Tags:["rfm_audit_officer"],CustomName:'{"text":"财政负责人·方正","color":"gold","bold":true}',CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{profession:"minecraft:librarian",level:5,type:"minecraft:plains"}}

function rfm:task/action/economy/economy_3/create_books
advancement revoke @s only rfm:audit_pickup_a
advancement revoke @s only rfm:audit_pickup_b
advancement revoke @s only rfm:audit_pickup_c

scoreboard players set @s audit_target 0
scoreboard players set @s audit_book_a 0
scoreboard players set @s audit_book_b 0
scoreboard players set @s audit_book_c 0
scoreboard players set @s audit_answer 0
scoreboard players set @s audit_correct 0
scoreboard players set @s audit_time 0
scoreboard players set @s audit_delay 0
scoreboard players set @s audit_state 2

gamemode spectator @a
tp @a 360 -52 116 180 25
gamemode adventure @s
tp @s 360 -60 112 180 0

tellraw @a [{"text":"【经济行动】预算核查","color":"yellow","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"右键拾取A、B、C三本账本并逐页核算；预算上限、可退押金、已结清款项等不计入本次申报。确认后选中虚假账本，将其交给财政负责人。","color":"white"}

title @s clear
title @s title {"text":"预算核查","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={audit_ready:1}] 1
