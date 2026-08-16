#清除上次生成的纸条，再按照当前在线玩家数生成等量纸条
kill @e[type=minecraft:item_display,tag=rfm_lottery_paper]
kill @e[type=minecraft:interaction,tag=rfm_lottery_interaction]

#桌面纸条占位坐标：每个编号的item_display与interaction必须保持在同一位置
#建好桌子后，只需成对修改下面8组summon坐标
execute if score #online_total player_count matches 1.. run summon minecraft:item_display -1.5 101 0 {Tags:["rfm_lottery_paper","rfm_lottery_paper_1"],item:{id:"minecraft:paper",count:1},item_display:"ground",transformation:{translation:[0.0f,0.03f,0.0f],scale:[1.1f,1.1f,1.1f],left_rotation:[0.7071f,0.0f,0.0f,0.7071f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if score #online_total player_count matches 1.. run summon minecraft:interaction -1.5 101 0 {Tags:["rfm_lottery_interaction","rfm_lottery_slot_1"],width:0.9f,height:0.5f,response:1b}
execute if score #online_total player_count matches 2.. run summon minecraft:item_display -0.5 101 0 {Tags:["rfm_lottery_paper","rfm_lottery_paper_2"],item:{id:"minecraft:paper",count:1},item_display:"ground",transformation:{translation:[0.0f,0.03f,0.0f],scale:[1.1f,1.1f,1.1f],left_rotation:[0.7071f,0.0f,0.0f,0.7071f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if score #online_total player_count matches 2.. run summon minecraft:interaction -0.5 101 0 {Tags:["rfm_lottery_interaction","rfm_lottery_slot_2"],width:0.9f,height:0.5f,response:1b}
execute if score #online_total player_count matches 3.. run summon minecraft:item_display 0.5 101 0 {Tags:["rfm_lottery_paper","rfm_lottery_paper_3"],item:{id:"minecraft:paper",count:1},item_display:"ground",transformation:{translation:[0.0f,0.03f,0.0f],scale:[1.1f,1.1f,1.1f],left_rotation:[0.7071f,0.0f,0.0f,0.7071f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if score #online_total player_count matches 3.. run summon minecraft:interaction 0.5 101 0 {Tags:["rfm_lottery_interaction","rfm_lottery_slot_3"],width:0.9f,height:0.5f,response:1b}
execute if score #online_total player_count matches 4.. run summon minecraft:item_display 1.5 101 0 {Tags:["rfm_lottery_paper","rfm_lottery_paper_4"],item:{id:"minecraft:paper",count:1},item_display:"ground",transformation:{translation:[0.0f,0.03f,0.0f],scale:[1.1f,1.1f,1.1f],left_rotation:[0.7071f,0.0f,0.0f,0.7071f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if score #online_total player_count matches 4.. run summon minecraft:interaction 1.5 101 0 {Tags:["rfm_lottery_interaction","rfm_lottery_slot_4"],width:0.9f,height:0.5f,response:1b}
execute if score #online_total player_count matches 5.. run summon minecraft:item_display -1.5 101 1 {Tags:["rfm_lottery_paper","rfm_lottery_paper_5"],item:{id:"minecraft:paper",count:1},item_display:"ground",transformation:{translation:[0.0f,0.03f,0.0f],scale:[1.1f,1.1f,1.1f],left_rotation:[0.7071f,0.0f,0.0f,0.7071f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if score #online_total player_count matches 5.. run summon minecraft:interaction -1.5 101 1 {Tags:["rfm_lottery_interaction","rfm_lottery_slot_5"],width:0.9f,height:0.5f,response:1b}
execute if score #online_total player_count matches 6.. run summon minecraft:item_display -0.5 101 1 {Tags:["rfm_lottery_paper","rfm_lottery_paper_6"],item:{id:"minecraft:paper",count:1},item_display:"ground",transformation:{translation:[0.0f,0.03f,0.0f],scale:[1.1f,1.1f,1.1f],left_rotation:[0.7071f,0.0f,0.0f,0.7071f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if score #online_total player_count matches 6.. run summon minecraft:interaction -0.5 101 1 {Tags:["rfm_lottery_interaction","rfm_lottery_slot_6"],width:0.9f,height:0.5f,response:1b}
execute if score #online_total player_count matches 7.. run summon minecraft:item_display 0.5 101 1 {Tags:["rfm_lottery_paper","rfm_lottery_paper_7"],item:{id:"minecraft:paper",count:1},item_display:"ground",transformation:{translation:[0.0f,0.03f,0.0f],scale:[1.1f,1.1f,1.1f],left_rotation:[0.7071f,0.0f,0.0f,0.7071f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if score #online_total player_count matches 7.. run summon minecraft:interaction 0.5 101 1 {Tags:["rfm_lottery_interaction","rfm_lottery_slot_7"],width:0.9f,height:0.5f,response:1b}
execute if score #online_total player_count matches 8.. run summon minecraft:item_display 1.5 101 1 {Tags:["rfm_lottery_paper","rfm_lottery_paper_8"],item:{id:"minecraft:paper",count:1},item_display:"ground",transformation:{translation:[0.0f,0.03f,0.0f],scale:[1.1f,1.1f,1.1f],left_rotation:[0.7071f,0.0f,0.0f,0.7071f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if score #online_total player_count matches 8.. run summon minecraft:interaction 1.5 101 1 {Tags:["rfm_lottery_interaction","rfm_lottery_slot_8"],width:0.9f,height:0.5f,response:1b}

#为实际生成的纸条随机分配第1～N名，保证名次不重复
scoreboard players set @e[type=minecraft:interaction,tag=rfm_lottery_interaction] group_score 0
scoreboard players set #lottery_rank group_rank 1
execute if entity @e[type=minecraft:interaction,tag=rfm_lottery_interaction] run function rfm:collective/game/fated_draw/assign_next
