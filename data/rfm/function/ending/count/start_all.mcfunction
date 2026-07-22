#四项属性票数从0开始同时累加，结算时长只取四项中的最高票数
scoreboard players set #shown_fame settle_value 0
scoreboard players set #shown_economy settle_value 0
scoreboard players set #shown_welfare settle_value 0
scoreboard players set #shown_ecology settle_value 0
title @a title [{"score":{"name":"#shown_fame","objective":"settle_value"},"color":"aqua","bold":true},{"text":"   "},{"score":{"name":"#shown_economy","objective":"settle_value"},"color":"yellow","bold":true},{"text":"   "},{"score":{"name":"#shown_welfare","objective":"settle_value"},"color":"red","bold":true},{"text":"   "},{"score":{"name":"#shown_ecology","objective":"settle_value"},"color":"green","bold":true}]
schedule function rfm:ending/count/tick 5t replace
