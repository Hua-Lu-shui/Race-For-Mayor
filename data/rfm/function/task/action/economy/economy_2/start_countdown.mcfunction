tellraw @a {"text":"行动玩家已准备完成，招商洽谈即将开始！","color":"yellow","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{negotiation_ready:1}}}}]
scoreboard players set @s negotiation_state 3
scoreboard players set @s negotiation_delay 60
