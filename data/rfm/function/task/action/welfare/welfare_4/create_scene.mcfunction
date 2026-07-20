#创建804专用公交站区域
kill @e[type=minecraft:villager,tag=rfm_bus_passenger]
fill 924 -64 88 972 -50 120 minecraft:air replace
fill 926 -61 90 970 -61 118 minecraft:smooth_stone replace

#三条候车线路
fill 934 -61 98 938 -61 111 minecraft:red_concrete replace
fill 946 -61 98 950 -61 111 minecraft:yellow_concrete replace
fill 958 -61 98 962 -61 111 minecraft:blue_concrete replace
fill 934 -60 97 938 -60 97 minecraft:iron_block replace
fill 946 -60 97 950 -60 97 minecraft:iron_block replace
fill 958 -60 97 962 -60 97 minecraft:iron_block replace

#调度区和三枚发车按钮
fill 932 -61 112 964 -61 116 minecraft:gray_concrete replace
setblock 936 -60 114 minecraft:stone_button[face=floor,facing=north] replace
setblock 948 -60 114 minecraft:stone_button[face=floor,facing=north] replace
setblock 960 -60 114 minecraft:stone_button[face=floor,facing=north] replace

#站台边界
fill 926 -60 90 970 -60 90 minecraft:white_concrete replace
fill 926 -60 118 970 -60 118 minecraft:white_concrete replace
fill 926 -60 91 926 -60 117 minecraft:white_concrete replace
fill 970 -60 91 970 -60 117 minecraft:white_concrete replace
