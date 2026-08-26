#藏品：持有槽、神秘人展示内容与交易临时状态
scoreboard objectives add collection_slot1 dummy
scoreboard objectives add collection_slot2 dummy
scoreboard objectives add collection_slot3 dummy
scoreboard objectives add collection_slot4 dummy
scoreboard objectives add collection_slot5 dummy
scoreboard objectives add collection_cap dummy
scoreboard objectives add col_expand_used dummy
#兼容更新后直接/reload的进行中对局；已有容量分数不会被覆盖
execute as @a[tag=rfm_participant,scores={candidate=8}] unless score @s collection_cap matches -2147483648..2147483647 run scoreboard players set @s collection_cap 3
execute as @a[tag=rfm_participant] unless score @s collection_cap matches -2147483648..2147483647 run scoreboard players set @s collection_cap 2
execute as @a[tag=rfm_participant] unless score @s col_expand_used matches -2147483648..2147483647 run scoreboard players set @s col_expand_used 0
#旧版本已经扩过容的玩家在/reload后仍视为用过一次
execute as @a[tag=rfm_participant] unless score @s candidate matches 8 if score @s collection_cap matches 3.. run scoreboard players set @s col_expand_used 1
execute as @a[tag=rfm_participant,scores={candidate=8}] if score @s collection_cap matches 4.. run scoreboard players set @s col_expand_used 1
scoreboard objectives add collection_offer dummy
scoreboard objectives add collection_attr dummy
scoreboard objectives add collection_cost dummy
scoreboard objectives add collection_target dummy
scoreboard objectives add collection_previous_offer dummy
scoreboard objectives add collection_offer_shift dummy
scoreboard objectives add collection_trade_round dummy
scoreboard objectives add collection_view_round dummy
#普通玩家通过聊天按钮提交交易确认请求
scoreboard objectives add collection_confirm trigger
#普通玩家主动刷新藏品；次数按玩家记录，整局最多三次
scoreboard objectives add collection_refresh trigger
scoreboard objectives add collection_refresh_count dummy
#满槽交易时选择要替换的藏品槽位
scoreboard objectives add collection_replace trigger
#“羽毛笔”交易时，用于计算当前最高属性并从并列项中随机选择
scoreboard objectives add collection_highest dummy
scoreboard objectives add collection_tie_mask dummy
scoreboard objectives add collection_pay_pick dummy
#藏品效果使用的属性快照、差值、极值与并列随机选择
scoreboard objectives add collection_fame_before dummy
scoreboard objectives add collection_economy_before dummy
scoreboard objectives add collection_welfare_before dummy
scoreboard objectives add collection_ecology_before dummy
scoreboard objectives add collection_delta_fame dummy
scoreboard objectives add collection_delta_economy dummy
scoreboard objectives add collection_delta_welfare dummy
scoreboard objectives add collection_delta_ecology dummy
scoreboard objectives add collection_effect_value dummy
scoreboard objectives add collection_effect_mask dummy
scoreboard objectives add collection_effect_pick dummy
scoreboard objectives add collection_lowest dummy
scoreboard objectives add collection_steal_roll dummy
scoreboard objectives add collection_amber_fame dummy
scoreboard objectives add collection_amber_economy dummy
scoreboard objectives add collection_amber_welfare dummy
scoreboard objectives add collection_amber_ecology dummy
scoreboard objectives add stat_col_1 dummy
scoreboard objectives add stat_col_2 dummy
scoreboard objectives add stat_col_3 dummy
scoreboard objectives add stat_col_4 dummy
scoreboard objectives add stat_col_5 dummy
scoreboard objectives add stat_col_6 dummy
scoreboard objectives add stat_col_7 dummy
