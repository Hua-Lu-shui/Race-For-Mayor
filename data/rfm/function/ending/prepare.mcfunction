#执行prepare函数对应的游戏流程
#最终结算天赋只在正常结算入口执行一次
execute unless score #abilities settle_state matches 1 run function rfm:ability/final/apply
#补做第10回合属性领先统计，并结算终局类头衔
function rfm:title/leader/final_round
function rfm:title/check/attributes
function rfm:title/check/final
execute as @a[tag=rfm_participant,scores={title_item_used=0}] unless entity @s[advancements={rfm:title/no_item=true}] run function rfm:title/award/no_item
#停止下一回合准备检测并清理可能残留的准备时钟
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
clear @a[tag=rfm_participant] minecraft:clock[minecraft:custom_data={next_round_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]
#进入游戏结束阶段，玩家仍停留在各自办公室并确认进入结算
function rfm:phase/phase2
scoreboard players set #settle_state settle_state 1
scoreboard players set @a[tag=rfm_participant] settle_ready 0
scoreboard players set @a[tag=rfm_participant] settle_clock 0
clear @a[tag=rfm_participant] minecraft:clock[minecraft:custom_data={settlement_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}]
item replace entity @a[tag=rfm_participant] hotbar.4 with minecraft:clock[minecraft:custom_name='{"text":"准备最终结算","color":"gold","bold":true,"italic":false}',minecraft:lore=['{"text":"全员确认后前往市政厅","color":"gray","italic":false}'],minecraft:custom_data={settlement_ready:1}] 1
title @a[tag=rfm_participant] subtitle {"text":""}
title @a[tag=rfm_participant] title [{"text":"准备","color":"white"},{"text":"最终结算","color":"#FFD166","bold":true}]
