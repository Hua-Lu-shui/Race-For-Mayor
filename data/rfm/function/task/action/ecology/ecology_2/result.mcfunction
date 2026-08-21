scoreboard players set @s sample_state 4
bossbar set rfm:sample_time visible false

tellraw @a[tag=rfm_participant] [{"text":"河道取样结束，共完成 ","color":"white"},{"score":{"name":"@s","objective":"sample_progress"},"color":"aqua"},{"text":" / 6 个取样点。","color":"white"}]

#30秒内完成全部6个取样点（剩余时间不少于200tick）：完美，生态+16
execute if score @s sample_progress matches 6 if score @s sample_time matches 200.. run scoreboard players add @s ecology 16
execute if score @s sample_progress matches 6 if score @s sample_time matches 200.. run function rfm:ability/military/perfect
execute if score @s sample_progress matches 6 if score @s sample_time matches 200.. run tellraw @a[tag=rfm_participant] [{"text":"【河道取样】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 生态 +16","color":"green"}]

#超过30秒但在40秒内完成全部6个取样点：完成，生态+10
execute if score @s sample_progress matches 6 if score @s sample_time matches ..199 run scoreboard players add @s ecology 10
execute if score @s sample_progress matches 6 if score @s sample_time matches ..199 run tellraw @a[tag=rfm_participant] [{"text":"【河道取样】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 生态 +10","color":"green"}]

#40秒倒计时结束时仍未完成全部6个取样点：失败，生态+4
execute if score @s sample_progress matches ..5 run scoreboard players add @s ecology 4
execute if score @s sample_progress matches ..5 run tellraw @a[tag=rfm_participant] [{"text":"【河道取样】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 生态 +4","color":"green"}]
function rfm:attribute/minimum
function rfm:task/action/ecology/ecology_2/cleanup
