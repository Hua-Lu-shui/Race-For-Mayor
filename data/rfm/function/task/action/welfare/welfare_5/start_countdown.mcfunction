tellraw @a[tag=rfm_participant] {"translate":"rfm.text.dd654e903789","color":"red","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{cooking_ready:1}}}}]
scoreboard players set @s cooking_state 3
scoreboard players set @s cooking_delay 60
