#临时应援场：正式建筑完成后可把本函数替换成固定场地调用
fill 712 -62 96 728 -52 112 minecraft:air
fill 713 -61 97 727 -61 111 minecraft:polished_andesite
fill 714 -61 98 726 -61 110 minecraft:light_gray_concrete
fill 719 -61 103 721 -61 105 minecraft:yellow_concrete

#透明围栏限制行动范围，同时允许抛物从上方进入
fill 713 -60 97 727 -58 97 minecraft:glass
fill 713 -60 111 727 -58 111 minecraft:glass
fill 713 -60 98 713 -58 110 minecraft:glass
fill 727 -60 98 727 -58 110 minecraft:glass

summon minecraft:text_display 720 -56.5 96.6 {Tags:["rfm_cheer_label"],billboard:"center",background:0,shadow:1b,text:'{"text":"市民应援场","color":"aqua","bold":true}'}
