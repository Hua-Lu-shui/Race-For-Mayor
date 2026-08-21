#财政办公室场地
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0

kill @e[type=minecraft:villager,tag=rfm_audit_officer]
kill @e[type=minecraft:item_display,tag=rfm_audit_officer]
summon minecraft:item_display 164 -57 18 {Tags:["rfm_audit_officer"],Rotation:[-90.0f,0.0f],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":700006}},item_display:"fixed",transformation:{translation:[0.0f,0.0f,0.0f],scale:[2.0f,2.0f,2.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

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

gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 162 -58 125 0 0
tp @s 162 -58 18 -90 0

tellraw @a[tag=rfm_participant] [{"text":"【经济行动】预算核查","color":"yellow","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"右键拾取","color":"white"},{"text":"三本账本","color":"#67D5FF","bold":true},{"text":"并逐页核算；预算上限、可退押金、已结清款项等不计入本次申报。确认后选中","color":"white"},{"text":"虚假账本","color":"#FFD166","bold":true},{"text":"，将其交给财政负责人。","color":"white"}]

title @s clear
title @s title {"text":"预算核查","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={audit_ready:1}] 1
