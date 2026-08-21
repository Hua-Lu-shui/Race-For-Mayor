advancement revoke @s only rfm:photo_select_7
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tag @e[tag=rfm_photo_selected] remove rfm_photo_selected
execute if score @s action_task matches 603 if score @s photo_state matches 1 run scoreboard players set @s photo_selected 7
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tag @e[tag=rfm_photo_resident_7] add rfm_photo_selected
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tellraw @a[tag=rfm_participant] {"text":"已选择：渔民","color":"blue"}
