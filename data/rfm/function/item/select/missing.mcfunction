#该名次玩家已经离线，下一tick继续下一名
scoreboard players add #current_picker item_selecting 1
schedule function rfm:item/select/next 1t replace
