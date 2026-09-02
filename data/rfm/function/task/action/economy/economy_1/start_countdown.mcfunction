tellraw @a[tag=rfm_participant] {"translate":"rfm.text.06fc243ad102","color":"yellow","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{market_ready:1}}}}]
scoreboard players set @s market_state 3
scoreboard players set @s market_delay 60
