#确保所有玩家都具有默认属性
execute as @a unless score @s candidate matches 0.. run function rfm:initialize/candidate
#开始游戏后实时显示自己的属性
function rfm:display/display
