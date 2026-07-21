scoreboard players set @s settle_ready 1
scoreboard players set @s settle_clock 0
clear @s minecraft:clock[minecraft:custom_data={settlement_ready:1}]
tellraw @a [{"selector":"@s","color":"white"},{"text":" 已确认进入最终结算。","color":"gray"}]
