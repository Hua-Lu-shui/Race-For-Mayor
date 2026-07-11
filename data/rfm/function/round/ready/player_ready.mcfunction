scoreboard players set @s next_round_ready 1
clear @s minecraft:paper[minecraft:custom_data={next_round_ready:1}]
tellraw @a [{"selector":"@s","color":"green"},{"text":" 已准备好进入下一轮。","color":"gray"}]

#清除已经丢到地上的准备纸条
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]
