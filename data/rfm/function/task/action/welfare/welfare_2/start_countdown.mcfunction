tellraw @a[tag=rfm_participant] {"translate":"rfm.text.8222483378de","color":"red","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{fitness_ready:1}}}}]
scoreboard players set @s fitness_state 3
scoreboard players set @s fitness_delay 60
