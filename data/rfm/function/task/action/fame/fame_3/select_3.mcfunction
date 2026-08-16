advancement revoke @s only rfm:photo_select_3
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tag @e[tag=rfm_photo_selected] remove rfm_photo_selected
execute if score @s action_task matches 603 if score @s photo_state matches 1 run scoreboard players set @s photo_selected 3
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tag @e[tag=rfm_photo_resident_3] add rfm_photo_selected
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tellraw @a {"text":"已选择：农民","color":"green"}
