scoreboard players operation @s photo_previous = @s photo_slot_2
function rfm:task/action/fame/fame_3/return_previous
execute if score @s photo_slot_1 = @s photo_selected run scoreboard players set @s photo_slot_1 0
execute if score @s photo_slot_2 = @s photo_selected run scoreboard players set @s photo_slot_2 0
execute if score @s photo_slot_3 = @s photo_selected run scoreboard players set @s photo_slot_3 0
execute if score @s photo_slot_4 = @s photo_selected run scoreboard players set @s photo_slot_4 0
execute if score @s photo_slot_5 = @s photo_selected run scoreboard players set @s photo_slot_5 0
scoreboard players operation @s photo_slot_2 = @s photo_selected
tp @e[tag=rfm_photo_selected] 180 -58.9 -29 0 0
tag @e[tag=rfm_photo_selected] remove rfm_photo_selected
scoreboard players set @s photo_selected 0
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.00dfdbf5811d","color":"green"}
