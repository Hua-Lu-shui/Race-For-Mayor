#确保所有玩家都具有默认属性
execute as @a unless score @s candidate matches 0.. run function rfm:initialize/candidate
#开始游戏后实时显示自己的属性
function rfm:display/display
#检查玩家是否选择了属性方向
function rfm:task/attribute/check
#检查玩家是否选择了决策方案
function rfm:task/decision/check
#检查行动玩家是否选择了行动任务方向
function rfm:task/action/attribute/check
#确保所有属性最低为0
function rfm:attribute/minimum
#执行生态行动901“排放巡查”
execute as @a[scores={action_task=901,emission_state=5}] at @s run function rfm:task/action/ecology/ecology_1/wait_ready
execute as @a[scores={action_task=901,emission_state=4}] run function rfm:task/action/ecology/ecology_1/countdown
execute as @a[scores={action_task=901,emission_state=1}] at @s run function rfm:task/action/ecology/ecology_1/tick
execute as @a[scores={action_task=901,emission_state=2}] run function rfm:task/action/ecology/ecology_1/intermission

#执行生态行动902“河道取样”
execute as @a[scores={action_task=902,sample_state=2}] at @s run function rfm:task/action/ecology/ecology_2/wait_ready
execute as @a[scores={action_task=902,sample_state=3}] run function rfm:task/action/ecology/ecology_2/countdown
execute as @a[scores={action_task=902,sample_state=1}] at @s run function rfm:task/action/ecology/ecology_2/tick

#所有行动任务结束后，等待全体玩家丢出准备纸条
execute if score #waiting next_round_ready matches 1 run function rfm:round/ready/check
