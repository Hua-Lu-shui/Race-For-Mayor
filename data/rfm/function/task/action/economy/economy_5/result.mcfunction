#根据就业匹配进度结算经济行动任务5
scoreboard players set @s employment_state 4
bossbar set rfm:employment_time visible false

execute if score @s employment_completed matches 5 run scoreboard players add @s economy 8
execute if score @s employment_completed matches 5 run function rfm:ability/military/perfect
execute if score @s employment_completed matches 5 run tellraw @a [{"text":"【就业走访】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 完成全部5名求职者的岗位匹配！","color":"gold","bold":true},{"text":" 经济 +8","color":"yellow"}]

execute if score @s employment_completed matches 3..4 run scoreboard players add @s economy 6
execute if score @s employment_completed matches 3..4 run tellraw @a [{"text":"【就业走访】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 达到3/5合格线！","color":"green","bold":true},{"text":" 完成进度：","color":"white"},{"score":{"name":"@s","objective":"employment_completed"},"color":"green","bold":true},{"text":"/5，经济 +6","color":"yellow"}]

execute if score @s employment_completed matches ..2 run tellraw @a [{"text":"【就业走访】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 未达到3/5合格线，任务失败。","color":"red","bold":true},{"text":" 完成进度：","color":"white"},{"score":{"name":"@s","objective":"employment_completed"},"color":"red","bold":true},{"text":"/5，属性保持不变","color":"gray"}]
function rfm:attribute/minimum
function rfm:task/action/economy/economy_5/cleanup
