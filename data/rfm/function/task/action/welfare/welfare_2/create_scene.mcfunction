#清理802专用临时区域和旧箭矢
fill 792 -64 86 870 -45 122 minecraft:air replace
kill @e[type=minecraft:arrow,x=792,y=-64,z=86,dx=78,dy=19,dz=36]
kill @e[type=minecraft:text_display,tag=rfm_fitness_label]

#三条赛道共用的安全观战地面标识
fill 794 -61 88 868 -61 120 minecraft:light_gray_concrete replace
fill 795 -61 89 867 -61 119 minecraft:air replace
