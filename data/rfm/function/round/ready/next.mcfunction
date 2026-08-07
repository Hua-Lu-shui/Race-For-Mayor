scoreboard players set #waiting next_round_ready 1
scoreboard players set @a next_round_ready 0
scoreboard players set @a next_round_clock 0

#重新发放尚未使用的令牌，并与下一回合准备时钟同时交给玩家
clear @a minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
execute as @a[scores={item_held=1..24}] run function rfm:item/give_selected
#藏品使用独立持有状态，持续生效，并从快捷栏第一格开始重新显示
execute as @a[scores={collection_slot1=1..}] run function rfm:collection/deliver
execute as @a[scores={collection_slot1=..0,collection_slot2=1..}] run function rfm:collection/deliver
execute as @a[scores={collection_slot1=..0,collection_slot2=..0,collection_slot3=1..}] run function rfm:collection/deliver
item replace entity @a hotbar.4 with minecraft:clock[minecraft:custom_name='{"text":"准备下一回合","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出；全员准备后开始下一回合","color":"gray","italic":false}'],minecraft:custom_data={next_round_ready:1}] 1
