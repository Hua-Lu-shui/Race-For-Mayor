#生成等待屋（1180 -59 100）
fill 1173 -59 93 1187 -54 107 minecraft:air
fill 1172 -60 92 1188 -60 108 minecraft:smooth_stone
fill 1172 -59 92 1188 -54 92 minecraft:gray_concrete
fill 1172 -59 108 1188 -54 108 minecraft:gray_concrete
fill 1172 -59 92 1172 -54 108 minecraft:gray_concrete
fill 1188 -59 92 1188 -54 108 minecraft:gray_concrete
setblock 1180 -53 100 minecraft:light[level=15]

#生成令牌屋（1240 -59 104）与告示牌展示墙
fill 1225 -59 90 1255 -51 111 minecraft:air
fill 1224 -60 89 1256 -60 112 minecraft:deepslate_tiles
fill 1224 -59 89 1256 -51 89 minecraft:polished_deepslate
fill 1224 -59 112 1256 -51 112 minecraft:polished_deepslate
fill 1224 -59 89 1224 -51 112 minecraft:polished_deepslate
fill 1256 -59 89 1256 -51 112 minecraft:polished_deepslate
setblock 1230 -53 104 minecraft:light[level=15]
setblock 1240 -53 104 minecraft:light[level=15]
setblock 1250 -53 104 minecraft:light[level=15]

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

setblock 1227 -58 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性互换","color":"gold","bold":true}','{"text":"名誉","color":"aqua"}','{"text":"与指定玩家互换","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 1"}}']}}
setblock 1229 -58 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性互换","color":"gold","bold":true}','{"text":"经济","color":"yellow"}','{"text":"与指定玩家互换","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 2"}}']}}
setblock 1231 -58 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性互换","color":"gold","bold":true}','{"text":"民生","color":"red"}','{"text":"与指定玩家互换","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 3"}}']}}
setblock 1233 -58 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性互换","color":"gold","bold":true}','{"text":"生态","color":"green"}','{"text":"与指定玩家互换","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 4"}}']}}
setblock 1235 -58 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"权重加强","color":"light_purple","bold":true}','{"text":"名誉权重","color":"aqua"}','{"text":"权重 +2","color":"green"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 5"}}']}}
setblock 1237 -58 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"权重加强","color":"light_purple","bold":true}','{"text":"经济权重","color":"yellow"}','{"text":"权重 +2","color":"green"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 6"}}']}}
setblock 1239 -58 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"权重加强","color":"light_purple","bold":true}','{"text":"民生权重","color":"red"}','{"text":"权重 +2","color":"green"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 7"}}']}}
setblock 1241 -58 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"权重加强","color":"light_purple","bold":true}','{"text":"生态权重","color":"green"}','{"text":"权重 +2","color":"green"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 8"}}']}}
setblock 1243 -58 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"权重削弱","color":"dark_purple","bold":true}','{"text":"名誉权重","color":"aqua"}','{"text":"权重 -2","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 9"}}']}}
setblock 1245 -58 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"权重削弱","color":"dark_purple","bold":true}','{"text":"经济权重","color":"yellow"}','{"text":"权重 -2","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 10"}}']}}
setblock 1247 -58 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"权重削弱","color":"dark_purple","bold":true}','{"text":"民生权重","color":"red"}','{"text":"权重 -2","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 11"}}']}}
setblock 1249 -58 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"权重削弱","color":"dark_purple","bold":true}','{"text":"生态权重","color":"green"}','{"text":"权重 -2","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 12"}}']}}

setblock 1247 -56 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性专精","color":"light_purple","bold":true}','{"text":"自身名誉 +5","color":"aqua"}','{"text":"其他人名誉 -5","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 13"}}']}}
setblock 1249 -56 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性专精","color":"light_purple","bold":true}','{"text":"自身经济 +5","color":"yellow"}','{"text":"其他人经济 -5","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 14"}}']}}
setblock 1251 -56 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性专精","color":"light_purple","bold":true}','{"text":"自身民生 +5","color":"red"}','{"text":"其他人民生 -5","color":"dark_red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 15"}}']}}
setblock 1253 -56 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性专精","color":"light_purple","bold":true}','{"text":"自身生态 +5","color":"green"}','{"text":"其他人生态 -5","color":"red"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 16"}}']}}

#第三排：四件属性锁定与四件属性窥探令牌
setblock 1227 -54 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性锁定","color":"black","bold":true}','{"text":"锁定名誉","color":"aqua"}','{"text":"本局不再变化","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 17"}}']}}
setblock 1229 -54 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性锁定","color":"black","bold":true}','{"text":"锁定经济","color":"yellow"}','{"text":"本局不再变化","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 18"}}']}}
setblock 1231 -54 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性锁定","color":"black","bold":true}','{"text":"锁定民生","color":"red"}','{"text":"本局不再变化","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 19"}}']}}
setblock 1233 -54 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性锁定","color":"black","bold":true}','{"text":"锁定生态","color":"green"}','{"text":"本局不再变化","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 20"}}']}}
setblock 1235 -54 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性窥探","color":"light_purple","bold":true}','{"text":"查看四项领先者","color":"white"}','{"text":"仅自己可见","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 21"}}']}}
setblock 1237 -54 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性窥探","color":"light_purple","bold":true}','{"text":"查看四项领先者","color":"white"}','{"text":"仅自己可见","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 22"}}']}}
setblock 1239 -54 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性窥探","color":"light_purple","bold":true}','{"text":"查看四项领先者","color":"white"}','{"text":"仅自己可见","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 23"}}']}}
setblock 1241 -54 90 minecraft:dark_oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text":"属性窥探","color":"light_purple","bold":true}','{"text":"查看四项领先者","color":"white"}','{"text":"仅自己可见","color":"gray"}','{"text":"[右键选择]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_pick set 24"}}']}}
