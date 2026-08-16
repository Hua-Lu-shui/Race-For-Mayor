#停止任务，按照10次判断的正确次数结算；只影响生态属性
scoreboard players set @s emission_state 3

#10次正确：完美完成，生态+16
execute if score @s emission_correct matches 10 run scoreboard players add @s ecology 16
execute if score @s emission_correct matches 10 run function rfm:ability/military/perfect
execute if score @s emission_correct matches 10 run title @s title {"text":"完美完成","color":"gold","bold":true}
execute if score @s emission_correct matches 10 run tellraw @a [{"text":"【排放巡查】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 生态 +16","color":"green"}]

#6至9次正确：完成，生态+12
execute if score @s emission_correct matches 6..9 run scoreboard players add @s ecology 12
execute if score @s emission_correct matches 6..9 run title @s title {"text":"完成","color":"green","bold":true}
execute if score @s emission_correct matches 6..9 run tellraw @a [{"text":"【排放巡查】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 生态 +12","color":"green"}]

#0至5次正确：失败，不改变任何属性
execute if score @s emission_correct matches ..5 run title @s title {"text":"失败","color":"red","bold":true}
execute if score @s emission_correct matches ..5 run tellraw @a [{"text":"【排放巡查】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]

tellraw @a [{"text":"排放巡查结束，","color":"white"},{"selector":"@s","color":"white"},{"text":" 共判断正确 ","color":"white"},{"score":{"name":"@s","objective":"emission_correct"},"color":"green"},{"text":" / 10 次。","color":"white"}]
function rfm:attribute/minimum
function rfm:task/action/ecology/ecology_1/cleanup
