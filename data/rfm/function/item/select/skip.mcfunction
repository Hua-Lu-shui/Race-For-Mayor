tellraw @s [{"text":"你有未使用的","color":"white"},{"text":"令牌","color":"#C6A8FF"},{"text":"，跳过本次","color":"white"},{"text":"令牌选择","color":"#C6A8FF"}]
scoreboard players add #current_picker item_selecting 1
#下一tick继续寻找，避免多名连续跳过时递归回溯重复结束流程
schedule function rfm:item/select/next 1t replace
