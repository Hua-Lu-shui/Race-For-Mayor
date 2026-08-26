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
tp @a[tag=rfm_participant] 162 -58 25 0 0
tp @s 162 -58 18 -90 0

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.e2c360093975","color":"yellow","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.2b84d119437c","color":"white"},{"translate":"rfm.text.792049aa724f","color":"#67D5FF","bold":true},{"translate":"rfm.text.9f8fde10bdf1","color":"white"},{"translate":"rfm.text.4f47caba8cc2","color":"#FFD166","bold":true},{"translate":"rfm.text.a63686a6b4fe","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.6917e7aba53e","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={audit_ready:1}] 1
