#全部玩家完成选择后返回办公室，再同时发放令牌和下一回合准备时钟
scoreboard players set @a[tag=rfm_participant] item_selecting 0
execute as @a[tag=rfm_participant] run function rfm:room/return
title @a[tag=rfm_participant] title [{"translate":"rfm.text.2fd9ee0a86c7","color":"#C6A8FF","bold":true},{"translate":"rfm.text.76b9880829e0","color":"white"}]
schedule function rfm:round/ready/next 40t replace
