scoreboard players set #waiting next_round_ready 1
scoreboard players set @a[tag=rfm_participant] next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
scoreboard players operation #next_round round = #round round
scoreboard players add #next_round round 1
execute store result storage rfm:round_clock next_round int 1 run scoreboard players get #next_round round

#重新发放尚未使用的令牌，并与下一回合准备时钟同时交给玩家
clear @a[tag=rfm_participant] minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
execute as @a[tag=rfm_participant,scores={item_held=1..24}] run function rfm:item/give_selected
#藏品使用独立持有状态，持续生效，并从快捷栏第一格开始重新显示
execute as @a[tag=rfm_participant,scores={collection_slot1=1..}] run function rfm:collection/deliver
execute as @a[tag=rfm_participant,scores={collection_slot1=..0,collection_slot2=1..}] run function rfm:collection/deliver
execute as @a[tag=rfm_participant,scores={collection_slot1=..0,collection_slot2=..0,collection_slot3=1..}] run function rfm:collection/deliver
execute as @a[tag=rfm_participant,scores={collection_slot1=..0,collection_slot2=..0,collection_slot3=..0,collection_slot4=1..}] run function rfm:collection/deliver
execute as @a[tag=rfm_participant,scores={collection_slot1=..0,collection_slot2=..0,collection_slot3=..0,collection_slot4=..0,collection_slot5=1..}] run function rfm:collection/deliver
execute as @a[tag=rfm_participant] run function rfm:collection/give_clock with storage rfm:round_clock
