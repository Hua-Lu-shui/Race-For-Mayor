tellraw @a[tag=rfm_participant] {"translate":"rfm.text.be76cf032563","color":"red","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{exercise_ready:1}}}}]
scoreboard players set @s exercise_state 3
scoreboard players set @s exercise_delay 60
