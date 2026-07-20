scoreboard players add #group_arrival group_arrival 1
scoreboard players set @s group_answered 1
execute if score #group_arrival group_arrival matches 1 run scoreboard players add @s group_score 5
execute if score #group_arrival group_arrival matches 2 run scoreboard players add @s group_score 4
execute if score #group_arrival group_arrival matches 3 run scoreboard players add @s group_score 3
execute if score #group_arrival group_arrival matches 4 run scoreboard players add @s group_score 2
execute if score #group_arrival group_arrival matches 5 run scoreboard players add @s group_score 1
title @s actionbar [{"text":"响应成功！本次第 ","color":"green"},{"score":{"name":"#group_arrival","objective":"group_arrival"},"color":"yellow","bold":true},{"text":" 名","color":"green"}]
