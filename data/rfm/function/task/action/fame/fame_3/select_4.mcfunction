advancement revoke @s only rfm:photo_select_4
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tag @e[tag=rfm_photo_selected] remove rfm_photo_selected
execute if score @s action_task matches 603 if score @s photo_state matches 1 run scoreboard players set @s photo_selected 4
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tag @e[tag=rfm_photo_resident_4] add rfm_photo_selected
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.8cf168e3a2f9","color":"gold"}
