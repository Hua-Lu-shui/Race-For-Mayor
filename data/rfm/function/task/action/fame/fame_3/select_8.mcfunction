advancement revoke @s only rfm:photo_select_8
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tag @e[tag=rfm_photo_selected] remove rfm_photo_selected
execute if score @s action_task matches 603 if score @s photo_state matches 1 run scoreboard players set @s photo_selected 8
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tag @e[tag=rfm_photo_resident_8] add rfm_photo_selected
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.385f7e2c4775","color":"white"}
