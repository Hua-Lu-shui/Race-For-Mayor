advancement revoke @s only rfm:photo_position_2
execute if score @s action_task matches 603 if score @s photo_state matches 1 run scoreboard players set @s photo_position 2
execute if score @s action_task matches 603 if score @s photo_state matches 1 run function rfm:task/action/fame/fame_3/place_selected
