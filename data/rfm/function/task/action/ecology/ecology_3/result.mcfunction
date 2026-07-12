scoreboard players set @s park_state 4
bossbar set rfm:park_time visible false
tellraw @a [{"text":"公园维护结束，共完成 ","color":"white"},{"score":{"name":"@s","objective":"park_progress"},"color":"green"},{"text":" / 6 个维护点。","color":"white"}]

execute if score @s park_progress matches 6 run scoreboard players add @s ecology 8
execute if score @s park_progress matches 6 run tellraw @a [{"text":"【公园维护】","color":"green","bold":true},{"selector":"@s","color":"yellow"},{"text":" 完美完成任务！","color":"gold","bold":true},{"text":" 生态 +8","color":"green"}]

execute if score @s park_progress matches 4..5 run scoreboard players add @s ecology 6
execute if score @s park_progress matches 4..5 run tellraw @a [{"text":"【公园维护】","color":"green","bold":true},{"selector":"@s","color":"yellow"},{"text":" 通过任务！","color":"green","bold":true},{"text":" 生态 +6","color":"green"}]

execute if score @s park_progress matches ..3 run tellraw @a [{"text":"【公园维护】","color":"green","bold":true},{"selector":"@s","color":"yellow"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]
function rfm:attribute/minimum
function rfm:task/action/ecology/ecology_3/cleanup
