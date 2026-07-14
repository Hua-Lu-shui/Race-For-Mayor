#创建任务计分板
scoreboard objectives add task dummy
#创建决策任务计分板
scoreboard objectives add decision_task dummy
#创建决策方案选择触发器：1为A，2为B，3为C
scoreboard objectives add decision_choice trigger
#创建行动任务计分板
scoreboard objectives add action_task dummy
#创建属性选择计分板
scoreboard objectives add attribute_choice trigger
#创建随机抽取三种属性计分板
scoreboard objectives add attribute_option_1 dummy
scoreboard objectives add attribute_option_2 dummy
scoreboard objectives add attribute_option_3 dummy
#创建隐藏属性计分板
scoreboard objectives add attribute_missing dummy
#创建行动玩家计分板
scoreboard objectives add action_player dummy
#创建行动玩家限额计分板
scoreboard objectives add action_quota dummy
#创建行动模式计分板：1为单人任务，2为双人任务
scoreboard objectives add action_mode dummy
#创建行动角色计分板：1为单人玩家，2为双人队长，3为双人队员
scoreboard objectives add action_role dummy
#创建行动执行顺序计分板
scoreboard objectives add action_order dummy
#创建行动任务选择计分板
scoreboard objectives add action_attribute_choice trigger
#创建随机抽取行动任务三种属性计分板
scoreboard objectives add action_attribute_option_1 dummy
scoreboard objectives add action_attribute_option_2 dummy
scoreboard objectives add action_attribute_option_3 dummy
#创建行动任务隐藏属性计分板
scoreboard objectives add action_attribute_missing dummy

#生态行动901“排放巡查”计分板
scoreboard objectives add emission_target dummy
scoreboard objectives add emission_answer dummy
scoreboard objectives add emission_round dummy
scoreboard objectives add emission_correct dummy
scoreboard objectives add emission_time dummy
scoreboard objectives add emission_state dummy
scoreboard objectives add emission_delay dummy

#下一轮全员准备状态，以及玩家丢出准备时钟的统计
scoreboard objectives add next_round_ready dummy
scoreboard objectives add next_round_clock minecraft.dropped:minecraft.clock

#生态行动902“河道取样”计分板
scoreboard objectives add sample_progress dummy
scoreboard objectives add sample_time dummy
scoreboard objectives add sample_state dummy
scoreboard objectives add sample_delay dummy

#生态行动903“公园维护”计分板
scoreboard objectives add park_progress dummy
scoreboard objectives add park_time dummy
scoreboard objectives add park_state dummy
scoreboard objectives add park_delay dummy

#生态行动904“垃圾分类督导”计分板
scoreboard objectives add trash_round dummy
scoreboard objectives add trash_item_id dummy
scoreboard objectives add trash_target dummy
scoreboard objectives add trash_answer dummy
scoreboard objectives add trash_correct dummy
scoreboard objectives add trash_time dummy
scoreboard objectives add trash_state dummy
scoreboard objectives add trash_delay dummy
scoreboard objectives add trash_used_1 dummy
scoreboard objectives add trash_used_2 dummy
scoreboard objectives add trash_used_3 dummy
scoreboard objectives add trash_used_4 dummy
scoreboard objectives add trash_used_5 dummy
scoreboard objectives add trash_used_6 dummy
scoreboard objectives add trash_used_7 dummy
scoreboard objectives add trash_used_8 dummy
scoreboard objectives add trash_used_9 dummy
scoreboard objectives add trash_used_10 dummy

#生态行动905“清洁能源检查”计分板
scoreboard objectives add energy_round dummy
scoreboard objectives add energy_target dummy
scoreboard objectives add energy_total dummy
scoreboard objectives add energy_correct dummy
scoreboard objectives add energy_time dummy
scoreboard objectives add energy_state dummy
scoreboard objectives add energy_delay dummy
