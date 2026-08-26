tellraw @a[tag=rfm_participant] {"translate":"rfm.text.bc1d01ff273a","color":"aqua","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{qa_ready:1}}}}]
scoreboard players set @s qa_state 3
scoreboard players set @s qa_delay 60
