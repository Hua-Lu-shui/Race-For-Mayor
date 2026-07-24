#关闭重复检测，清理结算时钟与游戏中的属性界面
scoreboard players set #settle_state settle_state 2
clear @a minecraft:clock[minecraft:custom_data={settlement_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}]
scoreboard objectives setdisplay sidebar
title @a actionbar {"text":""}
title @a clear

#先戴上南瓜头遮挡视野两秒再传送；抵达市政厅三秒后揭开画面
item replace entity @a armor.head with minecraft:carved_pumpkin[minecraft:custom_name='{"text":"转场遮罩","color":"black","italic":false}',minecraft:custom_data={rfm_ending_blackout:1}] 1
tellraw @a {"text":"所有候选人均已确认，最终票数统计即将开始……","color":"dark_gray","italic":true}
schedule function rfm:ending/city_hall 40t replace
