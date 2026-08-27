#执行tick函数对应的游戏流程
#确保所有玩家都具有默认属性
execute as @a unless score @s candidate matches 0.. run function rfm:initialize/candidate
#每tick按本局会话刷新在线参与者标签；允许本局玩家重连，同时排除中途加入和旧局玩家
tag @a remove rfm_participant
execute if score #phase phase matches 1..2 as @a if score @s game_session = #session game_session run tag @s add rfm_participant
execute store result score #session_online game_session run execute if entity @a[tag=rfm_participant]
#在任何阶段开放大厅区域内的全部告示牌触发器
execute positioned 49 -49.5 -18.5 run scoreboard players enable @a[distance=..16] lobby_action
#只在结算完成且靠近返回告示牌时开放返回触发器
execute if score #settle_state settle_state matches 4 positioned 49 -56 35 run scoreboard players enable @a[distance=..6] ending_return
#处理告示牌提交的普通玩家请求
execute as @a[scores={lobby_action=1..}] at @s run function rfm:lobby/check_action
execute as @a[scores={ending_return=1..}] at @s run function rfm:ending/check_return
#每tick只选择对应属性已锁定的玩家，覆盖事件、令牌与任务造成的修改
execute as @a[tag=rfm_participant,scores={fame_lock=1}] run scoreboard players operation @s fame = @s fame_locked
execute as @a[tag=rfm_participant,scores={economy_lock=1}] run scoreboard players operation @s economy = @s economy_locked
execute as @a[tag=rfm_participant,scores={welfare_lock=1}] run scoreboard players operation @s welfare = @s welfare_locked
execute as @a[tag=rfm_participant,scores={ecology_lock=1}] run scoreboard players operation @s ecology = @s ecology_locked
#每tick统一执行属性下限检查，防止任何遗漏入口留下负数
execute as @a[tag=rfm_participant] run function rfm:attribute/minimum
#游戏进行中检查四项属性是否首次超过80分
execute if score #phase phase matches 1 run function rfm:title/check/attributes
#藏品持续效果及掉落回收入口
execute if score #phase phase matches 1 run function rfm:collection/effect/tick
#神秘人在办公室停留期间检测右键交互
execute if score #phase phase matches 1 run function rfm:collection/mysterious/tick
#处理普通玩家通过聊天按钮提交的交易确认请求
execute as @a[tag=rfm_participant,scores={collection_confirm=1..}] run function rfm:collection/trade/check_confirm
#处理普通玩家通过聊天按钮提交的主动刷新请求
execute as @a[tag=rfm_participant,scores={collection_refresh=1..}] run function rfm:collection/mysterious/check_refresh
#处理满槽藏品替换与属性互换目标请求
execute as @a[tag=rfm_participant,scores={collection_replace=1..}] at @s run function rfm:collection/trade/check_replace
execute as @a[tag=rfm_participant,scores={swap_target=1..}] at @s run function rfm:item/use/swap/check_target
#等待全体玩家丢出结算时钟
execute if score #settle_state settle_state matches 1 run function rfm:ending/ready/check
#执行令牌争夺状态机
execute if score #group_state group_state matches 3 run function rfm:collective/prepare_check
execute if score #group_state group_state matches 4 run function rfm:collective/start_ready/check
execute if score #group_state group_state matches 5 as @a[tag=rfm_participant] run function rfm:collective/start_ready/lock_position
execute if score #group_state group_state matches 1 run function rfm:collective/tick
#等待下一回合期间检测玩家丢出的令牌
execute if score #waiting next_round_ready matches 1 run function rfm:item/use/check_all
#检测令牌屋中当前玩家的告示牌选择
execute if entity @a[tag=rfm_participant,scores={item_selecting=1,item_pick=1..24}] run function rfm:item/select/check
#选择倒计时有效时才检查玩家选择，避免非选择阶段重复执行整组判断
execute if score #choose_time choose_time matches 1.. run function rfm:task/decision/attribute/check
#检查玩家是否选择了决策方案
execute if entity @a[tag=rfm_participant,scores={decision_choice=1..3}] run function rfm:task/decision/check
#选择倒计时有效时才检查行动玩家的任务方向
execute if score #choose_time choose_time matches 1.. run function rfm:task/action/attribute/check
#选择阶段只记录任务选择，不运行行动任务状态机和传送逻辑
execute if score #choose_time choose_time matches 1.. run return 0
#所有行动任务正式开始前统一锁定坐标，但保留玩家视角转动
execute as @a[tag=rfm_participant,scores={action_task=601..905}] run function rfm:task/action/sequence/lock_before_start
#所有行动任务结束后，等待全体玩家丢出准备时钟
execute if score #waiting next_round_ready matches 1 run function rfm:round/ready/check
#只选择实际持有行动任务的玩家，再由统一入口按任务与状态分派
execute as @a[tag=rfm_participant,scores={action_task=601..905}] run function rfm:task/action/tick
