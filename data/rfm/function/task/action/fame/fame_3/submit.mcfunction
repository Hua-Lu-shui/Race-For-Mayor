setblock 180 -58 -19 minecraft:polished_blackstone_button[face=wall,facing=south,powered=false]
playsound minecraft:entity.item_frame.add_item master @a[tag=rfm_participant] 180 -58 -19 1 1.6 1
scoreboard players set @s photo_match 0
execute if score @s photo_slot_1 = @s photo_target_1 run scoreboard players add @s photo_match 1
execute if score @s photo_slot_2 = @s photo_target_2 run scoreboard players add @s photo_match 1
execute if score @s photo_slot_3 = @s photo_target_3 run scoreboard players add @s photo_match 1
execute if score @s photo_slot_4 = @s photo_target_4 run scoreboard players add @s photo_match 1
execute if score @s photo_slot_5 = @s photo_target_5 run scoreboard players add @s photo_match 1
execute if score @s photo_match matches 5 run scoreboard players set @s photo_success 1
execute if score @s photo_match matches 5 run function rfm:task/action/fame/fame_3/result
execute if score @s photo_state matches 1 unless score @s photo_match matches 5 run function rfm:task/action/fame/fame_3/submit_wrong
