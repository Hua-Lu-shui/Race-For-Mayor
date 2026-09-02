tellraw @a[tag=rfm_participant] {"translate":"rfm.text.a8f6e874cf7c","color":"red","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{hospital_ready:1}}}}]
scoreboard players set @s hospital_state 3
scoreboard players set @s hospital_delay 60
