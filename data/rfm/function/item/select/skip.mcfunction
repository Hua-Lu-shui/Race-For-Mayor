tellraw @s {"text":"你仍持有第一次集体行动获得的道具，本次跳过道具选择。","color":"gray"}
scoreboard players add #current_picker item_selecting 1
#下一tick继续寻找，避免多名连续跳过时递归回溯重复结束流程
schedule function rfm:item/select/next 1t replace
