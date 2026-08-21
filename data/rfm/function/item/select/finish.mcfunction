#全部玩家完成选择后返回办公室，再同时发放令牌和下一回合准备时钟
scoreboard players set @a[tag=rfm_participant] item_selecting 0
execute as @a[tag=rfm_participant] run function rfm:room/return
title @a[tag=rfm_participant] title [{"text":"令牌选择","color":"#C6A8FF","bold":true},{"text":"结束","color":"white"}]
schedule function rfm:round/ready/next 40t replace
