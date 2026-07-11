#确保所有玩家都具有默认属性
execute as @a unless score @s candidate matches 0.. run function rfm:initialize/candidate
#开始游戏后实时显示自己的属性
function rfm:display/display
#检查玩家是否选择了属性方向
function rfm:task/attribute/check
#检查行动玩家是否选择了行动任务方向
function rfm:task/action/attribute/check
#确保所有属性最低为0
function rfm:attribute/minimum
