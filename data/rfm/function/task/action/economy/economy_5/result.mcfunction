#根据匹配人数和完成时间结算经济行动任务5
scoreboard players set @s employment_state 4
bossbar set rfm:employment_time visible false

execute if score @s employment_completed matches 5 if score @s employment_time matches 300.. run scoreboard players add @s economy 8
execute if score @s employment_completed matches 5 if score @s employment_time matches 300.. run tellraw @a [{"text":"【就业走访】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 快速为五名求职者找到合适岗位！","color":"gold","bold":true},{"text":" 经济 +8","color":"yellow"}]

execute if score @s employment_completed matches 5 if score @s employment_time matches ..299 run scoreboard players add @s economy 6
execute if score @s employment_completed matches 5 if score @s employment_time matches ..299 run tellraw @a [{"text":"【就业走访】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 完成全部就业匹配！","color":"green","bold":true},{"text":" 经济 +6","color":"yellow"}]

execute if score @s employment_completed matches 4 if score @s employment_time matches ..0 run scoreboard players add @s economy 4
execute if score @s employment_completed matches 4 if score @s employment_time matches ..0 run tellraw @a [{"text":"【就业走访】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 成功匹配四名求职者。","color":"yellow","bold":true},{"text":" 经济 +4","color":"yellow"}]

execute if score @s employment_completed matches ..3 if score @s employment_time matches ..0 run tellraw @a [{"text":"【就业走访】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 未能完成足够的就业匹配，任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]
function rfm:attribute/minimum
function rfm:task/action/economy/economy_5/cleanup
