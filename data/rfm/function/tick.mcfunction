#执行tick函数对应的游戏流程
#确保所有玩家都具有默认属性
execute as @a unless score @s candidate matches 0.. run function rfm:initialize/candidate
#只在大厅告示牌区域开放统一触发器，覆盖左右两侧所有告示牌
execute if score #phase phase matches 0 positioned 49 -49.5 -18.5 run scoreboard players enable @a[distance=..16] lobby_action
#只在结算完成且靠近返回告示牌时开放返回触发器
execute if score #settle_state settle_state matches 4 positioned 49 -56 35 run scoreboard players enable @a[distance=..6] ending_return
#处理告示牌提交的普通玩家请求
execute as @a[scores={lobby_action=1..}] at @s run function rfm:lobby/check_action
execute as @a[scores={ending_return=1..}] at @s run function rfm:ending/check_return
#每tick只选择对应属性已锁定的玩家，覆盖事件、令牌与任务造成的修改
execute as @a[scores={fame_lock=1}] run scoreboard players operation @s fame = @s fame_locked
execute as @a[scores={economy_lock=1}] run scoreboard players operation @s economy = @s economy_locked
execute as @a[scores={welfare_lock=1}] run scoreboard players operation @s welfare = @s welfare_locked
execute as @a[scores={ecology_lock=1}] run scoreboard players operation @s ecology = @s ecology_locked
#游戏进行中检查四项属性是否首次超过80分
execute if score #phase phase matches 1 run function rfm:title/check/attributes
#藏品持续效果及掉落回收入口
execute if score #phase phase matches 1 run function rfm:collection/effect/tick
#神秘人在办公室停留期间检测右键交互
execute if score #phase phase matches 1 run function rfm:collection/mysterious/tick
#处理普通玩家通过聊天按钮提交的交易确认请求
execute as @a[scores={collection_confirm=1..}] run function rfm:collection/trade/check_confirm
#处理普通玩家通过聊天按钮提交的主动刷新请求
execute as @a[scores={collection_refresh=1..}] run function rfm:collection/mysterious/check_refresh
#处理满槽藏品替换与属性互换目标请求
execute as @a[scores={collection_replace=1..}] at @s run function rfm:collection/trade/check_replace
execute as @a[scores={swap_target=1..}] at @s run function rfm:item/use/swap/check_target
#等待全体玩家丢出结算时钟
execute if score #settle_state settle_state matches 1 run function rfm:ending/ready/check
#执行令牌争夺状态机
execute if score #group_state group_state matches 3 run function rfm:collective/prepare_check
execute if score #group_state group_state matches 4 run function rfm:collective/start_ready/check
execute if score #group_state group_state matches 5 as @a run function rfm:collective/start_ready/lock_position
execute if score #group_state group_state matches 1 run function rfm:collective/tick
#等待下一回合期间检测玩家丢出的令牌
execute if score #waiting next_round_ready matches 1 run function rfm:item/use/check_all
#检测令牌屋中当前玩家的告示牌选择
execute if entity @a[scores={item_selecting=1,item_pick=1..24}] run function rfm:item/select/check
#选择倒计时有效时才检查玩家选择，避免非选择阶段重复执行整组判断
execute if score #choose_time choose_time matches 1.. run function rfm:task/decision/attribute/check
#检查玩家是否选择了决策方案
execute if entity @a[scores={decision_choice=1..3}] run function rfm:task/decision/check
#选择倒计时有效时才检查行动玩家的任务方向
execute if score #choose_time choose_time matches 1.. run function rfm:task/action/attribute/check
#选择阶段只记录任务选择，不运行行动任务状态机和传送逻辑
execute if score #choose_time choose_time matches 1.. run return 0
#所有行动任务正式开始前统一锁定坐标，但保留玩家视角转动
execute as @a[scores={action_task=601..905}] run function rfm:task/action/sequence/lock_before_start
#所有行动任务结束后，等待全体玩家丢出准备时钟
execute if score #waiting next_round_ready matches 1 run function rfm:round/ready/check
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

#执行名誉行动604“公开答疑”
execute as @a[scores={action_task=604,qa_state=2}] at @s run function rfm:task/action/fame/fame_4/wait_ready
execute as @a[scores={action_task=604,qa_state=3}] run function rfm:task/action/fame/fame_4/countdown
execute as @a[scores={action_task=604,qa_state=1}] at @s run function rfm:task/action/fame/fame_4/tick
execute as @a[scores={action_task=604,qa_state=5}] run function rfm:task/action/fame/fame_4/intermission

#执行名誉行动605“市民应援”
execute as @a[scores={action_task=605,cheer_state=2}] at @s run function rfm:task/action/fame/fame_5/wait_ready
execute as @a[scores={action_task=605,cheer_state=3}] run function rfm:task/action/fame/fame_5/countdown
execute as @a[scores={action_task=605,cheer_state=1}] at @s run function rfm:task/action/fame/fame_5/tick

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

#执行民生行动801“医院排队疏导”
execute as @a[scores={action_task=801,hospital_state=2}] at @s run function rfm:task/action/welfare/welfare_1/wait_ready
execute as @a[scores={action_task=801,hospital_state=3}] run function rfm:task/action/welfare/welfare_1/countdown
execute as @a[scores={action_task=801,hospital_state=1}] run function rfm:task/action/welfare/welfare_1/tick

#执行民生行动802“全民健身挑战”
execute as @a[scores={action_task=802,fitness_state=2}] at @s run function rfm:task/action/welfare/welfare_2/wait_ready
execute as @a[scores={action_task=802,fitness_state=3}] run function rfm:task/action/welfare/welfare_2/countdown
execute as @a[scores={action_task=802,fitness_state=1}] at @s run function rfm:task/action/welfare/welfare_2/tick

#执行民生行动803“课间操领队”
execute as @a[scores={action_task=803,exercise_state=2}] at @s run function rfm:task/action/welfare/welfare_3/wait_ready
execute as @a[scores={action_task=803,exercise_state=3}] run function rfm:task/action/welfare/welfare_3/countdown
execute as @a[scores={action_task=803,exercise_state=5}] run function rfm:task/action/welfare/welfare_3/preview
execute as @a[scores={action_task=803,exercise_state=1}] at @s run function rfm:task/action/welfare/welfare_3/tick

#执行民生行动804“公交站调度”
execute as @a[scores={action_task=804,bus_state=2}] at @s run function rfm:task/action/welfare/welfare_4/wait_ready
execute as @a[scores={action_task=804,bus_state=3}] run function rfm:task/action/welfare/welfare_4/countdown
execute as @a[scores={action_task=804,bus_state=1}] at @s run function rfm:task/action/welfare/welfare_4/tick

#执行民生行动805“厨艺大比拼”
execute as @a[scores={action_task=805,cooking_state=2}] at @s run function rfm:task/action/welfare/welfare_5/wait_ready
execute as @a[scores={action_task=805,cooking_state=3}] run function rfm:task/action/welfare/welfare_5/countdown
execute as @a[scores={action_task=805,cooking_state=1}] at @s run function rfm:task/action/welfare/welfare_5/tick

