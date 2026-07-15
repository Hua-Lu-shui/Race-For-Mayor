#确保所有玩家都具有默认属性
execute as @a unless score @s candidate matches 0.. run function rfm:initialize/candidate
#选择倒计时有效时才检查玩家选择，避免非选择阶段重复执行整组判断
execute if score #choose_time choose_time matches 1.. run function rfm:task/attribute/check
#检查玩家是否选择了决策方案
function rfm:task/decision/check
#选择倒计时有效时才检查行动玩家的任务方向
execute if score #choose_time choose_time matches 1.. run function rfm:task/action/attribute/check
#执行生态行动901“排放巡查”
execute as @a[scores={action_task=901,emission_state=5}] at @s run function rfm:task/action/ecology/ecology_1/wait_ready
execute as @a[scores={action_task=901,emission_state=4}] run function rfm:task/action/ecology/ecology_1/countdown
execute as @a[scores={action_task=901,emission_state=1}] at @s run function rfm:task/action/ecology/ecology_1/tick
execute as @a[scores={action_task=901,emission_state=2}] run function rfm:task/action/ecology/ecology_1/intermission

#执行生态行动902“河道取样”
execute as @a[scores={action_task=902,sample_state=2}] at @s run function rfm:task/action/ecology/ecology_2/wait_ready
execute as @a[scores={action_task=902,sample_state=3}] run function rfm:task/action/ecology/ecology_2/countdown
execute as @a[scores={action_task=902,sample_state=1}] at @s run function rfm:task/action/ecology/ecology_2/tick

#执行生态行动903“公园维护”
execute as @a[scores={action_task=903,park_state=2}] at @s run function rfm:task/action/ecology/ecology_3/wait_ready
execute as @a[scores={action_task=903,park_state=3}] run function rfm:task/action/ecology/ecology_3/countdown
execute as @a[scores={action_task=903,park_state=1}] run function rfm:task/action/ecology/ecology_3/tick

#执行生态行动904“垃圾分类督导”
execute as @a[scores={action_task=904,trash_state=2}] at @s run function rfm:task/action/ecology/ecology_4/wait_ready
execute as @a[scores={action_task=904,trash_state=3}] run function rfm:task/action/ecology/ecology_4/countdown
execute as @a[scores={action_task=904,trash_state=1}] run function rfm:task/action/ecology/ecology_4/tick

#执行生态行动905“清洁能源检查”
execute as @a[scores={action_task=905,energy_state=2}] at @s run function rfm:task/action/ecology/ecology_5/wait_ready
execute as @a[scores={action_task=905,energy_state=3}] run function rfm:task/action/ecology/ecology_5/countdown
execute as @a[scores={action_task=905,energy_state=1}] run function rfm:task/action/ecology/ecology_5/tick

#执行经济行动701“市场调研”
execute as @a[scores={action_task=701,market_state=2}] at @s run function rfm:task/action/economy/economy_1/wait_ready
execute as @a[scores={action_task=701,market_state=3}] run function rfm:task/action/economy/economy_1/countdown
execute as @a[scores={action_task=701,market_state=1}] run function rfm:task/action/economy/economy_1/tick

#执行经济行动702“招商洽谈”
execute as @a[scores={action_task=702,negotiation_state=2}] at @s run function rfm:task/action/economy/economy_2/wait_ready
execute as @a[scores={action_task=702,negotiation_state=3}] run function rfm:task/action/economy/economy_2/countdown
execute as @a[scores={action_task=702,negotiation_state=1}] run function rfm:task/action/economy/economy_2/tick

#所有行动任务结束后，等待全体玩家丢出准备时钟
execute if score #waiting next_round_ready matches 1 run function rfm:round/ready/check
