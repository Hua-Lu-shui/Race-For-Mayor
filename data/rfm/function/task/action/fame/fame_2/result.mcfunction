#根据完成情况和错误次数结算社区拜访奖励
scoreboard players set @s visit_state 4
bossbar set rfm:visit_time visible false

execute if score @s visit_step matches 5.. if score @s visit_wrong matches 0 run scoreboard players add @s fame 16
execute if score @s visit_step matches 5.. if score @s visit_wrong matches 0 run function rfm:ability/military/perfect
execute if score @s visit_step matches 5.. if score @s visit_wrong matches 0 run tellraw @a [{"text":"【社区拜访】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 名誉 +16","color":"aqua"}]

execute if score @s visit_step matches 5.. if score @s visit_wrong matches 1..2 run scoreboard players add @s fame 10
execute if score @s visit_step matches 5.. if score @s visit_wrong matches 1..2 run tellraw @a [{"text":"【社区拜访】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 名誉 +10","color":"aqua"}]

execute if score @s visit_step matches ..4 run scoreboard players add @s fame 4
execute if score @s visit_step matches ..4 run tellraw @a [{"text":"【社区拜访】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 名誉 +4","color":"aqua"}]
function rfm:attribute/minimum
function rfm:task/action/fame/fame_2/cleanup
