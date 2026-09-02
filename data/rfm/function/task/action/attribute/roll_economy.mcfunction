scoreboard players add @s action_used_econ 0
execute store result score @s action_task run random value 701..705
scoreboard players set @s action_used_bit 1
execute if score @s action_task matches 702 run scoreboard players set @s action_used_bit 2
execute if score @s action_task matches 703 run scoreboard players set @s action_used_bit 4
execute if score @s action_task matches 704 run scoreboard players set @s action_used_bit 8
execute if score @s action_task matches 705 run scoreboard players set @s action_used_bit 16
scoreboard players operation @s action_used_chk = @s action_used_econ
scoreboard players operation @s action_used_chk /= @s action_used_bit
scoreboard players set #two action_used_bit 2
scoreboard players operation @s action_used_chk %= #two action_used_bit
execute if score @s action_used_chk matches 1 run return run function rfm:task/action/attribute/roll_economy
scoreboard players operation @s action_used_econ += @s action_used_bit
