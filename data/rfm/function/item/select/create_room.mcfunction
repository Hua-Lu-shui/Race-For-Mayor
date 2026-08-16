#每次令牌争夺重新开放24件令牌；被选择的告示牌会在本次选择中消失
scoreboard players set #item_1 item_available 1
scoreboard players set #item_2 item_available 1
scoreboard players set #item_3 item_available 1
scoreboard players set #item_4 item_available 1
scoreboard players set #item_5 item_available 1
scoreboard players set #item_6 item_available 1
scoreboard players set #item_7 item_available 1
scoreboard players set #item_8 item_available 1
scoreboard players set #item_9 item_available 1
scoreboard players set #item_10 item_available 1
scoreboard players set #item_11 item_available 1
scoreboard players set #item_12 item_available 1
scoreboard players set #item_13 item_available 1
scoreboard players set #item_14 item_available 1
scoreboard players set #item_15 item_available 1
scoreboard players set #item_16 item_available 1
scoreboard players set #item_17 item_available 1
scoreboard players set #item_18 item_available 1
scoreboard players set #item_19 item_available 1
scoreboard players set #item_20 item_available 1
scoreboard players set #item_21 item_available 1
scoreboard players set #item_22 item_available 1
scoreboard players set #item_23 item_available 1
scoreboard players set #item_24 item_available 1

setblock 65 -58 -42 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['{"text":"属性互换","color":"gold","bold":true}','{"text":"名誉","color":"aqua"}','{"text":"与指定玩家互换","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 1"}}']}}
setblock 63 -58 -42 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['{"text":"属性互换","color":"gold","bold":true}','{"text":"经济","color":"yellow"}','{"text":"与指定玩家互换","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 2"}}']}}
setblock 61 -58 -42 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['{"text":"属性互换","color":"gold","bold":true}','{"text":"民生","color":"red"}','{"text":"与指定玩家互换","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 3"}}']}}
setblock 59 -58 -42 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['{"text":"属性互换","color":"gold","bold":true}','{"text":"生态","color":"green"}','{"text":"与指定玩家互换","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 4"}}']}}
setblock 53 -58 -42 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['{"text":"权重加强","color":"light_purple","bold":true}','{"text":"名誉权重","color":"aqua"}','{"text":"权重 +2","color":"green"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 5"}}']}}
setblock 51 -58 -42 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['{"text":"权重加强","color":"light_purple","bold":true}','{"text":"经济权重","color":"yellow"}','{"text":"权重 +2","color":"green"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 6"}}']}}
setblock 49 -58 -42 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['{"text":"权重加强","color":"light_purple","bold":true}','{"text":"民生权重","color":"red"}','{"text":"权重 +2","color":"green"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 7"}}']}}
setblock 47 -58 -42 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['{"text":"权重加强","color":"light_purple","bold":true}','{"text":"生态权重","color":"green"}','{"text":"权重 +2","color":"green"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 8"}}']}}
setblock 45 -58 -42 minecraft:dark_oak_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['{"text":"权重削弱","color":"dark_purple","bold":true}','{"text":"名誉权重","color":"aqua"}','{"text":"权重 -2","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 9"}}']}}
setblock 45 -58 -44 minecraft:dark_oak_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['{"text":"权重削弱","color":"dark_purple","bold":true}','{"text":"经济权重","color":"yellow"}','{"text":"权重 -2","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 10"}}']}}
setblock 45 -58 -46 minecraft:dark_oak_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['{"text":"权重削弱","color":"dark_purple","bold":true}','{"text":"民生权重","color":"red"}','{"text":"权重 -2","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 11"}}']}}
setblock 45 -58 -48 minecraft:dark_oak_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['{"text":"权重削弱","color":"dark_purple","bold":true}','{"text":"生态权重","color":"green"}','{"text":"权重 -2","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 12"}}']}}

setblock 67 -58 -42 minecraft:dark_oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['{"text":"属性专精","color":"light_purple","bold":true}','{"text":"自身名誉 +5","color":"aqua"}','{"text":"其他人名誉 -5","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 13"}}']}}
setblock 67 -58 -44 minecraft:dark_oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['{"text":"属性专精","color":"light_purple","bold":true}','{"text":"自身经济 +5","color":"yellow"}','{"text":"其他人经济 -5","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 14"}}']}}
setblock 67 -58 -46 minecraft:dark_oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['{"text":"属性专精","color":"light_purple","bold":true}','{"text":"自身民生 +5","color":"red"}','{"text":"其他人民生 -5","color":"dark_red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 15"}}']}}
setblock 67 -58 -48 minecraft:dark_oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['{"text":"属性专精","color":"light_purple","bold":true}','{"text":"自身生态 +5","color":"green"}','{"text":"其他人生态 -5","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 16"}}']}}

#第三排：四件属性锁定与四件属性窥探令牌
setblock 47 -58 -49 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性锁定","color":"light_purple","bold":true}','{"text":"锁定名誉","color":"aqua"}','{"text":"本局不再变化","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 17"}}']}}
setblock 49 -58 -49 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性锁定","color":"light_purple","bold":true}','{"text":"锁定经济","color":"yellow"}','{"text":"本局不再变化","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 18"}}']}}
setblock 51 -58 -49 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性锁定","color":"light_purple","bold":true}','{"text":"锁定民生","color":"red"}','{"text":"本局不再变化","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 19"}}']}}
setblock 53 -58 -49 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性锁定","color":"light_purple","bold":true}','{"text":"锁定生态","color":"green"}','{"text":"本局不再变化","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 20"}}']}}
setblock 59 -58 -49 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性窥探","color":"light_purple","bold":true}','{"text":"查看四项领先者","color":"white"}','{"text":"仅自己可见","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 21"}}']}}
setblock 61 -58 -49 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性窥探","color":"light_purple","bold":true}','{"text":"查看四项领先者","color":"white"}','{"text":"仅自己可见","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 22"}}']}}
setblock 63 -58 -49 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性窥探","color":"light_purple","bold":true}','{"text":"查看四项领先者","color":"white"}','{"text":"仅自己可见","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 23"}}']}}
setblock 65 -58 -49 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性窥探","color":"light_purple","bold":true}','{"text":"查看四项领先者","color":"white"}','{"text":"仅自己可见","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 24"}}']}}
