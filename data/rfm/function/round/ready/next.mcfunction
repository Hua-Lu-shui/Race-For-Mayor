scoreboard players set #waiting next_round_ready 1
scoreboard players set @a next_round_ready 0
scoreboard players set @a next_round_clock 0

#重新发放尚未使用的道具，并与下一轮准备时钟同时交给玩家
clear @a minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
execute as @a[scores={item_held=1..24}] run function rfm:item/give_selected
item replace entity @a hotbar.4 with minecraft:clock[minecraft:custom_name='{"text":"准备下一轮","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出；全员准备后开始下一轮","color":"gray","italic":false}'],minecraft:custom_data={next_round_ready:1}] 1
