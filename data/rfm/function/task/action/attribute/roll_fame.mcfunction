scoreboard players add @s action_used_fame 0
execute store result score @s action_task run random value 601..605
scoreboard players set @s action_used_bit 1
execute if score @s action_task matches 602 run scoreboard players set @s action_used_bit 2
execute if score @s action_task matches 603 run scoreboard players set @s action_used_bit 4
execute if score @s action_task matches 604 run scoreboard players set @s action_used_bit 8
execute if score @s action_task matches 605 run scoreboard players set @s action_used_bit 16
scoreboard players operation @s action_used_chk = @s action_used_fame
scoreboard players operation @s action_used_chk /= @s action_used_bit
scoreboard players set #two action_used_bit 2
scoreboard players operation @s action_used_chk %= #two action_used_bit
execute if score @s action_used_chk matches 1 run return run function rfm:task/action/attribute/roll_fame
scoreboard players operation @s action_used_fame += @s action_used_bit
