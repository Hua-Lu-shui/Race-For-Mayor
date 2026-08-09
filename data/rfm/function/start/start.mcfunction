#设置阶段为1，代表游戏进行中
function rfm:phase/phase1
#新游戏从第0回合准备状态开始；全员准备后round函数会递增为第1回合
scoreboard players set #round round 0
#允许本局最终结算天赋执行一次
scoreboard players set #abilities settle_state 0
scoreboard players set @a ability_trigger 0
#重置行动玩家公平抽取次数和每位玩家的行动任务去重记录
scoreboard players reset * action_draw_count
scoreboard players reset * action_used_fame
scoreboard players reset * action_used_econ
scoreboard players reset * action_used_welf
scoreboard players reset * action_used_eco
#清空所有在线及离线玩家上一局的决策任务抽取位图
scoreboard players reset * dec_used_fame
scoreboard players reset * dec_used_econ
scoreboard players reset * dec_used_welf
scoreboard players reset * dec_used_eco
#重置本局头衔进度；技术根成就只负责承载16个可见头衔
advancement revoke @a from rfm:title/root
advancement grant @a only rfm:title/root
scoreboard players set @a title_dec_fame 0
scoreboard players set @a title_dec_econ 0
scoreboard players set @a title_dec_welf 0
scoreboard players set @a title_dec_eco 0
scoreboard players set @a title_lead_fame 0
scoreboard players set @a title_lead_econ 0
scoreboard players set @a title_lead_welf 0
scoreboard players set @a title_lead_eco 0
scoreboard players set @a title_item_used 0
scoreboard players set @a title_collection_bought 0
scoreboard players set @a stat_lead_f 0
scoreboard players set @a stat_lead_e 0
scoreboard players set @a stat_lead_w 0
scoreboard players set @a stat_lead_c 0
scoreboard players set @a stat_title_df 0
scoreboard players set @a stat_title_de 0
scoreboard players set @a stat_title_dw 0
scoreboard players set @a stat_title_dc 0
scoreboard players set @a stat_title_lf 0
scoreboard players set @a stat_title_le 0
scoreboard players set @a stat_title_lw 0
scoreboard players set @a stat_title_lc 0
scoreboard players set @a stat_title_sf 0
scoreboard players set @a stat_title_se 0
scoreboard players set @a stat_title_sw 0
scoreboard players set @a stat_title_sc 0
scoreboard players set @a stat_title_ni 0
scoreboard players set @a stat_title_nc 0
scoreboard players set @a stat_title_all 0
#初始化四项属性权重
scoreboard players set #weight fame_weight 5
scoreboard players set #weight economy_weight 5
scoreboard players set #weight welfare_weight 5
scoreboard players set #weight ecology_weight 5
#新一局首次刷新时，以候选人的初始属性作为动画起点
scoreboard players set @a attr_seen 0
#新游戏清除上一局所有在线及离线候选人的属性锁定
scoreboard players reset * fame_lock
scoreboard players reset * economy_lock
scoreboard players reset * welfare_lock
scoreboard players reset * ecology_lock
#在侧边栏展示各项权重
scoreboard players operation 名誉 weight_display = #weight fame_weight
scoreboard players operation 经济 weight_display = #weight economy_weight
scoreboard players operation 民生 weight_display = #weight welfare_weight
scoreboard players operation 生态 weight_display = #weight ecology_weight
scoreboard objectives setdisplay sidebar weight_display
#清空上一局的事件抽取记录
scoreboard players set #current event 0
scoreboard players reset * event_used
scoreboard players set #reveal_fame leader_reveal 0
scoreboard players set #reveal_economy leader_reveal 0
scoreboard players set #reveal_welfare leader_reveal 0
scoreboard players set #reveal_ecology leader_reveal 0
#重置令牌争夺与令牌状态
scoreboard players set #group_state group_state 0
scoreboard players set #group_prompt group_prompt 0
scoreboard players set #current_picker item_selecting 0
scoreboard players set @a group_score 0
scoreboard players set @a group_rank 0
scoreboard players set @a item_held 0
scoreboard players set @a item_selecting 0
scoreboard players set @a swap_pending 0
scoreboard players set @a stat_use_1 0
scoreboard players set @a stat_use_2 0
scoreboard players set @a stat_use_3 0
scoreboard players set @a stat_use_4 0
scoreboard players set @a stat_use_5 0
scoreboard players set @a stat_use_6 0
scoreboard players set @a stat_use_7 0
scoreboard players set @a stat_use_8 0
scoreboard players set @a stat_use_9 0
scoreboard players set @a stat_use_10 0
scoreboard players set @a stat_use_11 0
scoreboard players set @a stat_use_12 0
scoreboard players set @a stat_use_13 0
scoreboard players set @a stat_use_14 0
scoreboard players set @a stat_use_15 0
scoreboard players set @a stat_use_16 0
scoreboard players set @a stat_use_17 0
scoreboard players set @a stat_use_18 0
scoreboard players set @a stat_use_19 0
scoreboard players set @a stat_use_20 0
scoreboard players set @a stat_use_21 0
scoreboard players set @a stat_use_22 0
scoreboard players set @a stat_use_23 0
scoreboard players set @a stat_use_24 0
scoreboard players set @a stat_col_1 0
scoreboard players set @a stat_col_2 0
scoreboard players set @a stat_col_3 0
scoreboard players set @a stat_col_4 0
scoreboard players set @a stat_col_5 0
scoreboard players set @a stat_col_6 0
scoreboard players set @a stat_col_7 0
#重置藏品，并为医生生成开局随机藏品
function rfm:collection/start_game
#重置上一局的最终结算状态
scoreboard players set #settle_state settle_state 0
scoreboard players set #settle_room settle_room 0
scoreboard players set @a settle_ready 0
scoreboard players set @a settle_clock 0
scoreboard players set @a title_bonus 0
scoreboard players set @a vote_total 0
scoreboard players set @a final_votes 0
clear @a minecraft:clock[minecraft:custom_data={settlement_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}]
clear @a minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}]
#传送前戴上全黑南瓜遮罩，避免玩家看到办公室传送和区块加载过程
item replace entity @a armor.head with minecraft:carved_pumpkin[minecraft:custom_name='{"text":"转场遮罩","color":"black","italic":false}',minecraft:custom_data={rfm_ending_blackout:1}] 1
#在黑屏遮罩下分配房间并传送
function rfm:room/assign
#抵达办公室一秒后揭开画面
schedule function rfm:schedule/room_reveal 20t replace
#入住提示
schedule function rfm:schedule/room_delay 20t
