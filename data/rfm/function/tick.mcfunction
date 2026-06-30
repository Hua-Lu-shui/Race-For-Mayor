#确保所有玩家都具有默认属性
execute as @a unless score @s candidate matches 0.. run function rfm:initialize/candidate