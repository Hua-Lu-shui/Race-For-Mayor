#执行display函数对应的游戏流程
#持续校正所有来源造成的异常权重
function rfm:attribute/weight_minimum
#游戏进行中，将四项权重同步到侧边栏
execute if score #phase phase matches 1 run scoreboard players operation 名誉 weight_display = #weight fame_weight
execute if score #phase phase matches 1 run scoreboard players operation 经济 weight_display = #weight economy_weight
execute if score #phase phase matches 1 run scoreboard players operation 民生 weight_display = #weight welfare_weight
execute if score #phase phase matches 1 run scoreboard players operation 生态 weight_display = #weight ecology_weight

#动作栏采样前只恢复真正被锁定的属性，避免任务同tick修改造成错误的属性采样
execute as @a[scores={fame_lock=1}] run scoreboard players operation @s fame = @s fame_locked
execute as @a[scores={economy_lock=1}] run scoreboard players operation @s economy = @s economy_locked
execute as @a[scores={welfare_lock=1}] run scoreboard players operation @s welfare = @s welfare_locked
execute as @a[scores={ecology_lock=1}] run scoreboard players operation @s ecology = @s ecology_locked
execute as @a if score #phase phase matches 1 unless score #group_state group_state matches 1 run function rfm:display/player

#属性显示无需每tick刷新，每5tick更新一次即可
schedule function rfm:display/display 5t replace
