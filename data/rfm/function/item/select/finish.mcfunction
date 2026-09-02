scoreboard players set @a[tag=rfm_participant] item_selecting 0
execute as @a[tag=rfm_participant] run function rfm:room/return
title @a[tag=rfm_participant] title [{"translate":"rfm.text.2fd9ee0a86c7","color":"#C6A8FF","bold":true},{"translate":"rfm.text.76b9880829e0","color":"white"}]
schedule function rfm:round/ready/next 40t replace
