#隐藏本次选择，只向选择者确认令牌名称
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
execute if score @s item_held matches 1 run tellraw @s {"text":"已选择：名誉互换","color":"aqua","bold":true}
execute if score @s item_held matches 2 run tellraw @s {"text":"已选择：经济互换","color":"yellow","bold":true}
execute if score @s item_held matches 3 run tellraw @s {"text":"已选择：民生互换","color":"red","bold":true}
execute if score @s item_held matches 4 run tellraw @s {"text":"已选择：生态互换","color":"green","bold":true}
execute if score @s item_held matches 5 run tellraw @s {"text":"已选择：名誉权重加强","color":"aqua","bold":true}
execute if score @s item_held matches 6 run tellraw @s {"text":"已选择：经济权重加强","color":"yellow","bold":true}
execute if score @s item_held matches 7 run tellraw @s {"text":"已选择：民生权重加强","color":"red","bold":true}
execute if score @s item_held matches 8 run tellraw @s {"text":"已选择：生态权重加强","color":"green","bold":true}
execute if score @s item_held matches 9 run tellraw @s {"text":"已选择：名誉权重削弱","color":"aqua","bold":true}
execute if score @s item_held matches 10 run tellraw @s {"text":"已选择：经济权重削弱","color":"yellow","bold":true}
execute if score @s item_held matches 11 run tellraw @s {"text":"已选择：民生权重削弱","color":"red","bold":true}
execute if score @s item_held matches 12 run tellraw @s {"text":"已选择：生态权重削弱","color":"green","bold":true}
execute if score @s item_held matches 13 run tellraw @s {"text":"已选择：名誉专精","color":"aqua","bold":true}
execute if score @s item_held matches 14 run tellraw @s {"text":"已选择：经济专精","color":"yellow","bold":true}
execute if score @s item_held matches 15 run tellraw @s {"text":"已选择：民生专精","color":"red","bold":true}
execute if score @s item_held matches 16 run tellraw @s {"text":"已选择：生态专精","color":"green","bold":true}
execute if score @s item_held matches 17 run tellraw @s {"text":"已选择：名誉锁定","color":"aqua","bold":true}
execute if score @s item_held matches 18 run tellraw @s {"text":"已选择：经济锁定","color":"yellow","bold":true}
execute if score @s item_held matches 19 run tellraw @s {"text":"已选择：民生锁定","color":"red","bold":true}
execute if score @s item_held matches 20 run tellraw @s {"text":"已选择：生态锁定","color":"green","bold":true}
execute if score @s item_held matches 21..24 run tellraw @s {"text":"已选择：属性窥探","color":"light_purple","bold":true}

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
