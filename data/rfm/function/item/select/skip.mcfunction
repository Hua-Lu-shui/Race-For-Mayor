tellraw @s [{"text":"你仍持有第一次","color":"white"},{"text":"令牌争夺","color":"#C6A8FF"},{"text":"获得的","color":"white"},{"text":"令牌","color":"#C6A8FF"},{"text":"，本次跳过令牌选择。","color":"white"}]
scoreboard players add #current_picker item_selecting 1
#下一tick继续寻找，避免多名连续跳过时递归回溯重复结束流程
schedule function rfm:item/select/next 1t replace
