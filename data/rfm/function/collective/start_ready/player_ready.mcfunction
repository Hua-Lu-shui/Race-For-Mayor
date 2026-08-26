scoreboard players set @s group_ready 1
clear @s minecraft:paper[minecraft:custom_data={collective_start_ready:1}]
tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"white"},{"translate":"rfm.text.578de456e7c2","color":"gray"}]
