execute if score @s photo_selected matches 0 run tellraw @s {"text":"请先右键选择一位居民。","color":"red"}
execute if score @s photo_selected matches 1..8 if score @s photo_position matches 1 run function rfm:task/action/fame/fame_3/place_slot_1
execute if score @s photo_selected matches 1..8 if score @s photo_position matches 2 run function rfm:task/action/fame/fame_3/place_slot_2
execute if score @s photo_selected matches 1..8 if score @s photo_position matches 3 run function rfm:task/action/fame/fame_3/place_slot_3
execute if score @s photo_selected matches 1..8 if score @s photo_position matches 4 run function rfm:task/action/fame/fame_3/place_slot_4
execute if score @s photo_selected matches 1..8 if score @s photo_position matches 5 run function rfm:task/action/fame/fame_3/place_slot_5
scoreboard players set @s photo_position 0
function rfm:task/action/fame/fame_3/reset_buttons
