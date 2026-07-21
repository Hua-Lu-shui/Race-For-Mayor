tellraw @s {"text":"你尚未在聊天栏选择属性互换目标，本次跳过道具选择。","color":"gray"}
scoreboard players add #current_picker item_selecting 1
#下一tick继续寻找，避免多名连续跳过时递归回溯重复结束流程
schedule function rfm:item/select/next 1t replace
