schedule clear rfm:round/round
scoreboard players set #waiting next_round_ready 1
scoreboard players set @a[tag=rfm_participant] next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0

execute as @a[tag=rfm_participant,scores={collection_slot1=1..}] run function rfm:collection/deliver
execute as @a[tag=rfm_participant,scores={collection_slot1=..0,collection_slot2=1..}] run function rfm:collection/deliver
execute as @a[tag=rfm_participant,scores={collection_slot1=..0,collection_slot2=..0,collection_slot3=1..}] run function rfm:collection/deliver
execute as @a[tag=rfm_participant,scores={collection_slot1=..0,collection_slot2=..0,collection_slot3=..0,collection_slot4=1..}] run function rfm:collection/deliver
execute as @a[tag=rfm_participant,scores={collection_slot1=..0,collection_slot2=..0,collection_slot3=..0,collection_slot4=..0,collection_slot5=1..}] run function rfm:collection/deliver
item replace entity @a[tag=rfm_participant] hotbar.4 with minecraft:clock[minecraft:custom_name='{"translate":"rfm.text.d7808adf5fa1","color":"green","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.7722a004164b","color":"gray","italic":false}'],minecraft:custom_data={next_round_ready:1}] 1
