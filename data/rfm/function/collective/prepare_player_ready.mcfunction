scoreboard players set @s group_ready 1
clear @s minecraft:name_tag[minecraft:custom_data={collective_venue_ready:1}]
tellraw @a [{"selector":"@s","color":"white"},{"text":" 已准备好参加令牌争夺。","color":"gray"}]
