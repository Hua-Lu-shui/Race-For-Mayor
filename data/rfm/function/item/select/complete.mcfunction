#隐藏本次选择，只向选择者确认令牌名称
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
execute if score @s item_held matches 1 run tellraw @s {"translate":"rfm.text.b95be2adf573","color":"aqua","bold":true}
execute if score @s item_held matches 2 run tellraw @s {"translate":"rfm.text.dce42ed7935d","color":"yellow","bold":true}
execute if score @s item_held matches 3 run tellraw @s {"translate":"rfm.text.46295f8b008e","color":"red","bold":true}
execute if score @s item_held matches 4 run tellraw @s {"translate":"rfm.text.23553d0cfe70","color":"green","bold":true}
execute if score @s item_held matches 5 run tellraw @s {"translate":"rfm.text.233ce19470cb","color":"aqua","bold":true}
execute if score @s item_held matches 6 run tellraw @s {"translate":"rfm.text.dbbd49386b6e","color":"yellow","bold":true}
execute if score @s item_held matches 7 run tellraw @s {"translate":"rfm.text.49c7038d56c8","color":"red","bold":true}
execute if score @s item_held matches 8 run tellraw @s {"translate":"rfm.text.3f67b6f3afdd","color":"green","bold":true}
execute if score @s item_held matches 9 run tellraw @s {"translate":"rfm.text.3aa46769aa34","color":"aqua","bold":true}
execute if score @s item_held matches 10 run tellraw @s {"translate":"rfm.text.714c96a954ce","color":"yellow","bold":true}
execute if score @s item_held matches 11 run tellraw @s {"translate":"rfm.text.6ef66a5ec7cb","color":"red","bold":true}
execute if score @s item_held matches 12 run tellraw @s {"translate":"rfm.text.277e0a2f3567","color":"green","bold":true}
execute if score @s item_held matches 13 run tellraw @s {"translate":"rfm.text.4798b01d95dd","color":"aqua","bold":true}
execute if score @s item_held matches 14 run tellraw @s {"translate":"rfm.text.7c77da829569","color":"yellow","bold":true}
execute if score @s item_held matches 15 run tellraw @s {"translate":"rfm.text.0429062aac58","color":"red","bold":true}
execute if score @s item_held matches 16 run tellraw @s {"translate":"rfm.text.1ca87fb6cf8a","color":"green","bold":true}
execute if score @s item_held matches 17 run tellraw @s {"translate":"rfm.text.bb01a0733bb1","color":"aqua","bold":true}
execute if score @s item_held matches 18 run tellraw @s {"translate":"rfm.text.3e62d0ae2dfa","color":"yellow","bold":true}
execute if score @s item_held matches 19 run tellraw @s {"translate":"rfm.text.36dc9d0e6599","color":"red","bold":true}
execute if score @s item_held matches 20 run tellraw @s {"translate":"rfm.text.92daff3956f9","color":"green","bold":true}
execute if score @s item_held matches 21..22 run tellraw @s {"translate":"rfm.text.5f742f453f63","color":"light_purple","bold":true}
execute if score @s item_held matches 23..24 run tellraw @s {"translate":"rfm.text.30b16bce4be9","color":"gold","bold":true}

#将对应告示牌设为不可用并移除
execute if score @s item_held matches 1 run scoreboard players set #item_1 item_available 0
execute if score @s item_held matches 2 run scoreboard players set #item_2 item_available 0
execute if score @s item_held matches 3 run scoreboard players set #item_3 item_available 0
execute if score @s item_held matches 4 run scoreboard players set #item_4 item_available 0
execute if score @s item_held matches 5 run scoreboard players set #item_5 item_available 0
execute if score @s item_held matches 6 run scoreboard players set #item_6 item_available 0
execute if score @s item_held matches 7 run scoreboard players set #item_7 item_available 0
execute if score @s item_held matches 8 run scoreboard players set #item_8 item_available 0
execute if score @s item_held matches 9 run scoreboard players set #item_9 item_available 0
execute if score @s item_held matches 10 run scoreboard players set #item_10 item_available 0
execute if score @s item_held matches 11 run scoreboard players set #item_11 item_available 0
execute if score @s item_held matches 12 run scoreboard players set #item_12 item_available 0
execute if score @s item_held matches 13 run scoreboard players set #item_13 item_available 0
execute if score @s item_held matches 14 run scoreboard players set #item_14 item_available 0
execute if score @s item_held matches 15 run scoreboard players set #item_15 item_available 0
execute if score @s item_held matches 16 run scoreboard players set #item_16 item_available 0
execute if score @s item_held matches 17 run scoreboard players set #item_17 item_available 0
execute if score @s item_held matches 18 run scoreboard players set #item_18 item_available 0
execute if score @s item_held matches 19 run scoreboard players set #item_19 item_available 0
execute if score @s item_held matches 20 run scoreboard players set #item_20 item_available 0
execute if score @s item_held matches 21 run scoreboard players set #item_21 item_available 0
execute if score @s item_held matches 22 run scoreboard players set #item_22 item_available 0
execute if score @s item_held matches 23 run scoreboard players set #item_23 item_available 0
execute if score @s item_held matches 24 run scoreboard players set #item_24 item_available 0
function rfm:item/select/remove_sign

scoreboard players set @s item_selecting 0
scoreboard players set @s item_pick 0
tp @s 56 -59 -55 0 0
scoreboard players add #current_picker item_selecting 1
function rfm:item/select/next
