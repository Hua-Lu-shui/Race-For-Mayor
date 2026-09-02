tellraw @a[tag=rfm_participant] {"translate":"rfm.text.a8f6e874cf7c","color":"green","bold":true}
kill @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{park_ready:1}}}}]
scoreboard players set @s park_state 3
scoreboard players set @s park_delay 60
