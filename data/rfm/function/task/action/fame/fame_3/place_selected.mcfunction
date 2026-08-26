execute if score @s photo_selected matches 0 run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.75dc68d5f361","color":"red"}
execute if score @s photo_selected matches 1..8 if score @s photo_position matches 1 run function rfm:task/action/fame/fame_3/place_slot_1
execute if score @s photo_selected matches 1..8 if score @s photo_position matches 2 run function rfm:task/action/fame/fame_3/place_slot_2
execute if score @s photo_selected matches 1..8 if score @s photo_position matches 3 run function rfm:task/action/fame/fame_3/place_slot_3
execute if score @s photo_selected matches 1..8 if score @s photo_position matches 4 run function rfm:task/action/fame/fame_3/place_slot_4
execute if score @s photo_selected matches 1..8 if score @s photo_position matches 5 run function rfm:task/action/fame/fame_3/place_slot_5
scoreboard players set @s photo_position 0
function rfm:task/action/fame/fame_3/reset_buttons
