#执行prepare函数对应的游戏流程
#停止下一轮准备检测并清理可能残留的准备时钟
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_ready 0
scoreboard players set @a next_round_clock 0
clear @a minecraft:clock[minecraft:custom_data={next_round_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]

#进入游戏结束阶段，玩家此时仍停留在各自办公室
function rfm:phase/phase2
title @a title {"text":"即将进行最终结算","color":"gold","bold":true}
tellraw @a {"text":"第10轮已经结束，即将前往市政厅进行最终结算。","color":"gold","bold":true}

#预留5秒展示提示，然后传送至临时市政厅坐标
schedule function rfm:ending/city_hall 100t replace
