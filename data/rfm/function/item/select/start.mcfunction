#生成等待屋与令牌屋，所有玩家先进入等待屋
function rfm:item/select/create_room
scoreboard players set @a item_selecting 0
scoreboard players set @a item_pick 0
scoreboard players set #current_picker item_selecting 1
tp @a 1180 -59 100 0 0
title @a title {"text":"令牌选择开始","color":"light_purple","bold":true}
title @a subtitle {"text":"将按照令牌争夺排名依次进入令牌屋","color":"gray"}
function rfm:item/select/next
