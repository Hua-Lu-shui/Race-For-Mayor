tellraw @a[tag=rfm_participant] {"translate":"rfm.text.a8f6e874cf7c","color":"green","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{trash_ready:1}}}}]
scoreboard players set @s trash_state 3
scoreboard players set @s trash_delay 60
