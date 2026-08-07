#处理第一名玩家提交下一回合准备的状态
schedule clear rfm:round/round
scoreboard players set #waiting next_round_ready 1
scoreboard players set @a next_round_ready 0
scoreboard players set @a next_round_clock 0

#藏品只在回合准备物品发放时显示；医生开局藏品此时进入快捷栏第一格
execute as @a[scores={collection_slot1=1..}] run function rfm:collection/deliver
execute as @a[scores={collection_slot1=..0,collection_slot2=1..}] run function rfm:collection/deliver
execute as @a[scores={collection_slot1=..0,collection_slot2=..0,collection_slot3=1..}] run function rfm:collection/deliver
item replace entity @a hotbar.4 with minecraft:clock[minecraft:custom_name='{"text":"准备第一回合","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出；全员准备后开始第一回合","color":"gray","italic":false}'],minecraft:custom_data={next_round_ready:1}] 1
