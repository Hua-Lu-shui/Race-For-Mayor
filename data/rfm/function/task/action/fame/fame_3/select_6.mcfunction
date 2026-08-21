advancement revoke @s only rfm:photo_select_6
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tag @e[tag=rfm_photo_selected] remove rfm_photo_selected
execute if score @s action_task matches 603 if score @s photo_state matches 1 run scoreboard players set @s photo_selected 6
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tag @e[tag=rfm_photo_resident_6] add rfm_photo_selected
execute if score @s action_task matches 603 if score @s photo_state matches 1 run tellraw @a[tag=rfm_participant] {"text":"已选择：图书管理员","color":"light_purple"}
