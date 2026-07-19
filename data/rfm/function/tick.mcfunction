#执行tick函数对应的游戏流程
#确保所有玩家都具有默认属性
execute as @a unless score @s candidate matches 0.. run function rfm:initialize/candidate
#防止所有玩家受到常规伤害
effect give @a minecraft:resistance infinite 4 true
#防止所有玩家受到击退
effect give @a minecraft:resistance infinite 4 true
#确保所有玩家的饥饿值保持满格
effect give @a minecraft:saturation infinite 0 true
#选择倒计时有效时才检查玩家选择，避免非选择阶段重复执行整组判断
execute if score #choose_time choose_time matches 1.. run function rfm:task/decision/attribute/check
#检查玩家是否选择了决策方案
execute if entity @a[scores={decision_choice=1..3}] run function rfm:task/decision/check
#选择倒计时有效时才检查行动玩家的任务方向
execute if score #choose_time choose_time matches 1.. run function rfm:task/action/attribute/check
#——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
#执行名誉行动601“街头演讲”
execute as @a[scores={action_task=601,speech_state=2}] at @s run function rfm:task/action/fame/fame_1/wait_ready
execute as @a[scores={action_task=601,speech_state=3}] run function rfm:task/action/fame/fame_1/countdown
execute as @a[scores={action_task=601,speech_state=1}] at @s run function rfm:task/action/fame/fame_1/tick
execute as @a[scores={action_task=601,speech_state=5}] run function rfm:task/action/fame/fame_1/intermission

#执行名誉行动602“社区拜访”
execute as @a[scores={action_task=602,visit_state=2}] at @s run function rfm:task/action/fame/fame_2/wait_ready
execute as @a[scores={action_task=602,visit_state=3}] run function rfm:task/action/fame/fame_2/countdown
execute as @a[scores={action_task=602,visit_state=1}] at @s run function rfm:task/action/fame/fame_2/tick

#执行名誉行动603“市民合影”
execute as @a[scores={action_task=603,photo_state=2}] at @s run function rfm:task/action/fame/fame_3/wait_ready
execute as @a[scores={action_task=603,photo_state=3}] run function rfm:task/action/fame/fame_3/countdown
execute as @a[scores={action_task=603,photo_state=1}] at @s run function rfm:task/action/fame/fame_3/tick

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

#执行经济行动703“预算核查”
execute as @a[scores={action_task=703,audit_state=2}] at @s run function rfm:task/action/economy/economy_3/wait_ready
execute as @a[scores={action_task=703,audit_state=3}] run function rfm:task/action/economy/economy_3/countdown
execute as @a[scores={action_task=703,audit_state=1}] run function rfm:task/action/economy/economy_3/tick

#执行经济行动704“商圈巡查”
execute as @a[scores={action_task=704,supply_state=2}] at @s run function rfm:task/action/economy/economy_4/wait_ready
execute as @a[scores={action_task=704,supply_state=3}] run function rfm:task/action/economy/economy_4/countdown
execute as @a[scores={action_task=704,supply_state=1}] run function rfm:task/action/economy/economy_4/tick

#执行经济行动705“就业走访”
execute as @a[scores={action_task=705,employment_state=2}] at @s run function rfm:task/action/economy/economy_5/wait_ready
execute as @a[scores={action_task=705,employment_state=3}] run function rfm:task/action/economy/economy_5/countdown
execute as @a[scores={action_task=705,employment_state=1}] run function rfm:task/action/economy/economy_5/tick
#————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
#所有行动任务结束后，等待全体玩家丢出准备时钟
execute if score #waiting next_round_ready matches 1 run function rfm:round/ready/check
