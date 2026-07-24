#执行prepare函数对应的游戏流程
#补做第10轮属性领先统计，并结算终局类头衔
function rfm:title/leader/final_round
function rfm:title/check/attributes
execute as @a[scores={title_item_used=0}] unless entity @s[advancements={rfm:title/no_item=true}] run function rfm:title/award/no_item
#停止下一轮准备检测并清理可能残留的准备时钟
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_ready 0
scoreboard players set @a next_round_clock 0
clear @a minecraft:clock[minecraft:custom_data={next_round_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]
#进入最终结算时销毁所有尚未使用的令牌
clear @a minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}]
scoreboard players set @a item_held 0

#进入游戏结束阶段，玩家仍停留在各自办公室并确认进入结算
function rfm:phase/phase2
scoreboard players set #settle_state settle_state 1
scoreboard players set @a settle_ready 0
scoreboard players set @a settle_clock 0
clear @a minecraft:clock[minecraft:custom_data={settlement_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}]
item replace entity @a hotbar.4 with minecraft:clock[minecraft:custom_name='{"text":"准备最终结算","color":"gold","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出；全员确认后前往市政厅","color":"gray","italic":false}'],minecraft:custom_data={settlement_ready:1}] 1
title @a title {"text":"准备最终结算","color":"gold","bold":true}
title @a subtitle {"text":"丢出结算时钟，等待全体候选人确认","color":"yellow"}
tellraw @a {"text":"第10轮已经结束。请丢出物品栏中的结算时钟；所有候选人确认后，将统一前往市政厅统计最终票数。","color":"gold"}
