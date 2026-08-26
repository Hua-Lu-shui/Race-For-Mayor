#垃圾分类场地
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0

#所有玩家进入观战位置
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 236 -53 66 0 30
tp @s 236 -59 69 180 0

#清除容器正上方的阻挡方块，确保陷阱箱可以打开
setblock 236 -58 65 minecraft:air
setblock 232 -58 69 minecraft:air
setblock 236 -58 73 minecraft:air
setblock 240 -58 69 minecraft:air

#放置四个可储物的陷阱箱；资源包会隐藏箱体，只显示垃圾桶模型
setblock 236 -59 65 minecraft:trapped_chest[facing=south,type=single]{CustomName:'{"translate":"rfm.text.1b0ee977123b","color":"aqua","bold":true}'} replace
setblock 232 -59 69 minecraft:trapped_chest[facing=east,type=single]{CustomName:'{"translate":"rfm.text.dfbe16fb9796","color":"red","bold":true}'} replace
setblock 236 -59 73 minecraft:trapped_chest[facing=north,type=single]{CustomName:'{"translate":"rfm.text.a38f54b95f87","color":"green","bold":true}'} replace
setblock 240 -59 69 minecraft:trapped_chest[facing=west,type=single]{CustomName:'{"translate":"rfm.text.7946fb7921e0","color":"gray","bold":true}'} replace
function rfm:task/action/ecology/ecology_4/create_labels
function rfm:task/action/ecology/ecology_4/create_models

#初始化任务状态，等待行动玩家确认准备
scoreboard players set @s trash_round 0
scoreboard players set @s trash_item_id 0
scoreboard players set @s trash_target 0
scoreboard players set @s trash_answer 0
scoreboard players set @s trash_correct 0
scoreboard players set @s trash_time 0
scoreboard players set @s trash_delay 0
scoreboard players set @s trash_state 2

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.cd89a39fad9f","color":"green","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.995a081da711","color":"#67D5FF","bold":true},{"translate":"rfm.text.f3409a65182f","color":"white"},{"translate":"rfm.text.3dd4383b0327","color":"#FFCB77"},{"translate":"rfm.text.5fc43e3ceec3","color":"white"},{"translate":"rfm.text.6791d940022a","color":"#FFD166","bold":true},{"translate":"rfm.text.f349382cfbe5","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.8b296167927d","color":"#67D5FF","bold":true},{"translate":"rfm.text.e96687490f14","color":"white"},{"translate":"rfm.text.3df25805a364","color":"white"},{"translate":"rfm.text.8e635d974647","color":"white"},{"translate":"rfm.text.7946fb7921e0","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.0a5a7ffb4494","color":"green","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"green","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={trash_ready:1}] 1
