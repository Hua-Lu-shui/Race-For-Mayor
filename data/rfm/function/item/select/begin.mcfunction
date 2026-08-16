#玩家已在等待屋时，从第一名开始依次进入令牌屋
scoreboard players set @a item_selecting 0
scoreboard players set @a item_pick 0
scoreboard players set #current_picker item_selecting 1
tp @a 56 -59 -55 0 0
title @a title [{"text":"令牌选择","color":"#C6A8FF","bold":true},{"text":"开始","color":"white"}]
title @a subtitle [{"text":"将按照","color":"white"},{"text":"令牌争夺排名","color":"#FFD166"},{"text":"依次进入","color":"white"},{"text":"令牌屋","color":"#C6A8FF"}]
function rfm:item/select/next
