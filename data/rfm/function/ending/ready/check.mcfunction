execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}] on origin if entity @s[tag=rfm_participant,scores={settle_ready=0}] run function rfm:ending/ready/player_ready

kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}]
scoreboard players set @a[tag=rfm_participant] settle_clock 0

execute if score #session_online game_session = #session_size game_session if entity @a[tag=rfm_participant] unless entity @a[tag=rfm_participant,scores={settle_ready=0}] run function rfm:ending/transition
