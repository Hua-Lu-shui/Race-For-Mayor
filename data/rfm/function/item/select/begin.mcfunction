scoreboard players set @a[tag=rfm_participant] item_selecting 0
scoreboard players set @a[tag=rfm_participant] item_pick 0
scoreboard players set #current_picker item_selecting 1
tp @a[tag=rfm_participant] 56 -59 -55 0 0
title @a[tag=rfm_participant] title [{"translate":"rfm.text.2fd9ee0a86c7","color":"#C6A8FF","bold":true},{"translate":"rfm.text.79cc871ca992","color":"white"}]
function rfm:item/select/next
