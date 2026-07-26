#随机抽取生态行动，并用位图判断该玩家本局是否已经抽到过
scoreboard players add @s action_used_eco 0
execute store result score @s action_task run random value 901..905
scoreboard players set @s action_used_bit 1
execute if score @s action_task matches 902 run scoreboard players set @s action_used_bit 2
execute if score @s action_task matches 903 run scoreboard players set @s action_used_bit 4
execute if score @s action_task matches 904 run scoreboard players set @s action_used_bit 8
execute if score @s action_task matches 905 run scoreboard players set @s action_used_bit 16
scoreboard players operation @s action_used_chk = @s action_used_eco
scoreboard players operation @s action_used_chk /= @s action_used_bit
scoreboard players set #two action_used_bit 2
scoreboard players operation @s action_used_chk %= #two action_used_bit
execute if score @s action_used_chk matches 1 run return run function rfm:task/action/attribute/roll_ecology
scoreboard players operation @s action_used_eco += @s action_used_bit
