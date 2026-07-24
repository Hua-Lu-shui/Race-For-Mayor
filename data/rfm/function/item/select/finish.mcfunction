#全部玩家完成选择后返回办公室，再同时发放令牌和下一轮准备时钟
scoreboard players set @a item_selecting 0
execute as @a run function rfm:room/return
title @a title {"text":"令牌选择结束","color":"light_purple","bold":true}
title @a subtitle {"text":"令牌将在准备时钟发放时交给持有者","color":"gray"}
schedule function rfm:round/ready/next 40t replace
