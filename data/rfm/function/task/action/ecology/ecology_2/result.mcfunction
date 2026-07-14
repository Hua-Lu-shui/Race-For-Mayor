scoreboard players set @s sample_state 4
bossbar set rfm:sample_time visible false

tellraw @a [{"text":"河道取样结束，共完成 ","color":"white"},{"score":{"name":"@s","objective":"sample_progress"},"color":"aqua"},{"text":" / 6 个取样点。","color":"white"}]

#6个取样点全部完成：完美，生态+8
execute if score @s sample_progress matches 6 run scoreboard players add @s ecology 8
execute if score @s sample_progress matches 6 run tellraw @a [{"text":"【河道取样】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 完美完成任务！","color":"gold","bold":true},{"text":" 生态 +8","color":"green"}]

#4至5个取样点：通过，生态+6
execute if score @s sample_progress matches 4..5 run scoreboard players add @s ecology 6
execute if score @s sample_progress matches 4..5 run tellraw @a [{"text":"【河道取样】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 通过任务！","color":"green","bold":true},{"text":" 生态 +6","color":"green"}]

#0至3个取样点：失败，属性不变
execute if score @s sample_progress matches ..3 run tellraw @a [{"text":"【河道取样】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]
function rfm:attribute/minimum
function rfm:task/action/ecology/ecology_2/cleanup
