tellraw @a[tag=rfm_participant] {"translate":"rfm.text.206a3f37a8e7","color":"yellow","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{audit_ready:1}}}}]
scoreboard players set @s audit_state 3
scoreboard players set @s audit_delay 60
