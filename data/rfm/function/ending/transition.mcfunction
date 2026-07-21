#关闭重复检测，清理结算时钟与游戏中的属性界面
scoreboard players set #settle_state settle_state 2
clear @a minecraft:clock[minecraft:custom_data={settlement_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}]
scoreboard objectives setdisplay sidebar
title @a actionbar {"text":""}
title @a clear

#先黑屏两秒再传送；抵达市政厅三秒后揭开画面
effect give @a minecraft:blindness 7 0 true
effect give @a minecraft:darkness 7 0 true
tellraw @a {"text":"所有候选人均已确认，最终票数统计即将开始……","color":"dark_gray","italic":true}
schedule function rfm:ending/city_hall 40t replace
