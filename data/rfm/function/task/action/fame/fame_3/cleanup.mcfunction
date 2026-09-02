bossbar set rfm:photo_time visible false
clear @s minecraft:paper[minecraft:custom_data={photo_ready:1}]
clear @s minecraft:written_book[minecraft:custom_data~{rfm_photo_book:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{photo_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_photo_book:1}}}}]
tag @e[tag=rfm_photo_selected] remove rfm_photo_selected
advancement revoke @s only rfm:photo_select_1
advancement revoke @s only rfm:photo_select_2
advancement revoke @s only rfm:photo_select_3
advancement revoke @s only rfm:photo_select_4
advancement revoke @s only rfm:photo_select_5
advancement revoke @s only rfm:photo_select_6
advancement revoke @s only rfm:photo_select_7
advancement revoke @s only rfm:photo_select_8
advancement revoke @s only rfm:photo_position_1
advancement revoke @s only rfm:photo_position_2
advancement revoke @s only rfm:photo_position_3
advancement revoke @s only rfm:photo_position_4
advancement revoke @s only rfm:photo_position_5

scoreboard players set @s photo_selected 0
scoreboard players set @s photo_previous 0
scoreboard players set @s photo_position 0
scoreboard players set @s photo_slot_1 0
scoreboard players set @s photo_slot_2 0
scoreboard players set @s photo_slot_3 0
scoreboard players set @s photo_slot_4 0
scoreboard players set @s photo_slot_5 0
scoreboard players set @s photo_target_1 0
scoreboard players set @s photo_target_2 0
scoreboard players set @s photo_target_3 0
scoreboard players set @s photo_target_4 0
scoreboard players set @s photo_target_5 0
scoreboard players set @s photo_match 0
scoreboard players set @s photo_attempt 0
scoreboard players set @s photo_success 0
scoreboard players set @s photo_time 0
scoreboard players set @s photo_seconds 0
scoreboard players set @s photo_delay 0
scoreboard players set @s photo_state 0
function rfm:task/action/sequence/complete_current
