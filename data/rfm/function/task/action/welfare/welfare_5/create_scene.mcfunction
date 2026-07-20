#创建805专用步行街区域
kill @e[type=minecraft:interaction,tag=rfm_manhole_interaction]
kill @e[type=minecraft:marker,tag=rfm_manhole_anchor]
kill @e[type=minecraft:text_display,tag=rfm_manhole_label]
fill 978 -64 88 1030 -50 120 minecraft:air replace
fill 980 -61 90 1028 -61 118 minecraft:smooth_stone replace
fill 982 -61 92 1026 -61 116 minecraft:gray_concrete replace

#十二个关闭状态的井盖，开始任务时随机打开其中六个
setblock 988 -61 96 minecraft:black_concrete replace
setblock 999 -61 96 minecraft:black_concrete replace
setblock 1010 -61 96 minecraft:black_concrete replace
setblock 1021 -61 96 minecraft:black_concrete replace
setblock 988 -61 104 minecraft:black_concrete replace
setblock 999 -61 104 minecraft:black_concrete replace
setblock 1010 -61 104 minecraft:black_concrete replace
setblock 1021 -61 104 minecraft:black_concrete replace
setblock 988 -61 112 minecraft:black_concrete replace
setblock 999 -61 112 minecraft:black_concrete replace
setblock 1010 -61 112 minecraft:black_concrete replace
setblock 1021 -61 112 minecraft:black_concrete replace
fill 988 -60 96 988 -60 96 minecraft:iron_trapdoor[half=bottom,facing=north,open=false,powered=false,waterlogged=false] replace
fill 999 -60 96 999 -60 96 minecraft:iron_trapdoor[half=bottom,facing=north,open=false,powered=false,waterlogged=false] replace
fill 1010 -60 96 1010 -60 96 minecraft:iron_trapdoor[half=bottom,facing=north,open=false,powered=false,waterlogged=false] replace
fill 1021 -60 96 1021 -60 96 minecraft:iron_trapdoor[half=bottom,facing=north,open=false,powered=false,waterlogged=false] replace
fill 988 -60 104 988 -60 104 minecraft:iron_trapdoor[half=bottom,facing=north,open=false,powered=false,waterlogged=false] replace
fill 999 -60 104 999 -60 104 minecraft:iron_trapdoor[half=bottom,facing=north,open=false,powered=false,waterlogged=false] replace
fill 1010 -60 104 1010 -60 104 minecraft:iron_trapdoor[half=bottom,facing=north,open=false,powered=false,waterlogged=false] replace
fill 1021 -60 104 1021 -60 104 minecraft:iron_trapdoor[half=bottom,facing=north,open=false,powered=false,waterlogged=false] replace
fill 988 -60 112 988 -60 112 minecraft:iron_trapdoor[half=bottom,facing=north,open=false,powered=false,waterlogged=false] replace
fill 999 -60 112 999 -60 112 minecraft:iron_trapdoor[half=bottom,facing=north,open=false,powered=false,waterlogged=false] replace
fill 1010 -60 112 1010 -60 112 minecraft:iron_trapdoor[half=bottom,facing=north,open=false,powered=false,waterlogged=false] replace
fill 1021 -60 112 1021 -60 112 minecraft:iron_trapdoor[half=bottom,facing=north,open=false,powered=false,waterlogged=false] replace

#步行街边界
fill 980 -60 90 1028 -60 90 minecraft:white_concrete replace
fill 980 -60 118 1028 -60 118 minecraft:white_concrete replace
fill 980 -60 91 980 -60 117 minecraft:white_concrete replace
fill 1028 -60 91 1028 -60 117 minecraft:white_concrete replace
