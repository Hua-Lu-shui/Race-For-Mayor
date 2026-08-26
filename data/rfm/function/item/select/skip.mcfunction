tellraw @s [{"translate":"rfm.text.ae76c9775bef","color":"white"},{"translate":"rfm.text.3b811588971b","color":"#C6A8FF"},{"translate":"rfm.text.71fb6930d18f","color":"white"},{"translate":"rfm.text.2fd9ee0a86c7","color":"#C6A8FF"}]
scoreboard players add #current_picker item_selecting 1
#下一tick继续寻找，避免多名连续跳过时递归回溯重复结束流程
schedule function rfm:item/select/next 1t replace
