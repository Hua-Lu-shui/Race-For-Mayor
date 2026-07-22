#执行task函数对应的游戏流程
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
#创建行动模式计分板：当前固定为1（单人任务）
scoreboard objectives add action_mode dummy
#创建行动角色计分板：当前行动玩家固定为1
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
#——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
#名誉行动601“街头演讲”计分板
scoreboard objectives add speech_round dummy
scoreboard objectives add speech_order dummy
scoreboard objectives add speech_category dummy
scoreboard objectives add speech_question dummy
scoreboard objectives add speech_target dummy
scoreboard objectives add speech_answer dummy
scoreboard objectives add speech_correct dummy
scoreboard objectives add speech_score dummy
scoreboard objectives add speech_time dummy
scoreboard objectives add speech_state dummy
scoreboard objectives add speech_delay dummy

#名誉行动602“社区拜访”计分板
scoreboard objectives add visit_route dummy
scoreboard objectives add visit_step dummy
scoreboard objectives add visit_target dummy
scoreboard objectives add visit_answer dummy
scoreboard objectives add visit_wrong dummy
scoreboard objectives add visit_time dummy
scoreboard objectives add visit_state dummy
scoreboard objectives add visit_delay dummy

#名誉行动603“市民合影”计分板
scoreboard objectives add photo_selected dummy
scoreboard objectives add photo_previous dummy
scoreboard objectives add photo_position dummy
scoreboard objectives add photo_slot_1 dummy
scoreboard objectives add photo_slot_2 dummy
scoreboard objectives add photo_slot_3 dummy
scoreboard objectives add photo_slot_4 dummy
scoreboard objectives add photo_slot_5 dummy
scoreboard objectives add photo_target_1 dummy
scoreboard objectives add photo_target_2 dummy
scoreboard objectives add photo_target_3 dummy
scoreboard objectives add photo_target_4 dummy
scoreboard objectives add photo_target_5 dummy
scoreboard objectives add photo_match dummy
scoreboard objectives add photo_attempt dummy
scoreboard objectives add photo_success dummy
scoreboard objectives add photo_time dummy
scoreboard objectives add photo_seconds dummy
scoreboard objectives add photo_state dummy
scoreboard objectives add photo_delay dummy

#名誉行动604“公开答疑”计分板
scoreboard objectives add qa_round dummy
scoreboard objectives add qa_target dummy
scoreboard objectives add qa_previous dummy
scoreboard objectives add qa_correct dummy
scoreboard objectives add qa_time dummy
scoreboard objectives add qa_armed dummy
scoreboard objectives add qa_state dummy
scoreboard objectives add qa_delay dummy

#名誉行动605“市民应援”计分板
scoreboard objectives add cheer_score dummy
scoreboard objectives add cheer_combo dummy
scoreboard objectives add cheer_time dummy
scoreboard objectives add cheer_state dummy
scoreboard objectives add cheer_delay dummy
scoreboard objectives add cheer_spawn dummy
scoreboard objectives add cheer_type dummy

#生态行动901“排放巡查”计分板
scoreboard objectives add emission_target dummy
scoreboard objectives add emission_answer dummy
scoreboard objectives add emission_round dummy
scoreboard objectives add emission_correct dummy
scoreboard objectives add emission_time dummy
scoreboard objectives add emission_state dummy
scoreboard objectives add emission_delay dummy

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

#经济行动701“市场调研”计分板
scoreboard objectives add market_round dummy
scoreboard objectives add market_goods dummy
scoreboard objectives add market_target dummy
scoreboard objectives add market_answer dummy
scoreboard objectives add market_correct dummy
scoreboard objectives add market_time dummy
scoreboard objectives add market_state dummy
scoreboard objectives add market_delay dummy

#经济行动702“招商洽谈”计分板
scoreboard objectives add negotiation_round dummy
scoreboard objectives add negotiation_order dummy
scoreboard objectives add negotiation_category dummy
scoreboard objectives add negotiation_question dummy
scoreboard objectives add negotiation_answer dummy
scoreboard objectives add negotiation_correct dummy
scoreboard objectives add negotiation_time dummy
scoreboard objectives add negotiation_state dummy
scoreboard objectives add negotiation_delay dummy

#经济行动703“预算核查”
scoreboard objectives add audit_target dummy
scoreboard objectives add audit_book_a dummy
scoreboard objectives add audit_book_b dummy
scoreboard objectives add audit_book_c dummy
scoreboard objectives add audit_answer dummy
scoreboard objectives add audit_correct dummy
scoreboard objectives add audit_time dummy
scoreboard objectives add audit_state dummy
scoreboard objectives add audit_delay dummy

#经济行动704“商圈巡查”
scoreboard objectives add supply_order dummy
scoreboard objectives add supply_completed dummy
scoreboard objectives add supply_shop_1 dummy
scoreboard objectives add supply_shop_2 dummy
scoreboard objectives add supply_shop_3 dummy
scoreboard objectives add supply_shop_4 dummy
scoreboard objectives add supply_shop_5 dummy
scoreboard objectives add supply_time dummy
scoreboard objectives add supply_state dummy
scoreboard objectives add supply_delay dummy

#经济行动705“就业走访”
scoreboard objectives add employment_layout dummy
scoreboard objectives add employment_completed dummy
scoreboard objectives add employment_done_1 dummy
scoreboard objectives add employment_done_2 dummy
scoreboard objectives add employment_done_3 dummy
scoreboard objectives add employment_done_4 dummy
scoreboard objectives add employment_done_5 dummy
scoreboard objectives add employment_time dummy
scoreboard objectives add employment_state dummy
scoreboard objectives add employment_delay dummy

#民生行动801“医院排队疏导”
scoreboard objectives add hospital_round dummy
scoreboard objectives add hospital_case dummy
scoreboard objectives add hospital_target dummy
scoreboard objectives add hospital_answer dummy
scoreboard objectives add hospital_correct dummy
scoreboard objectives add hospital_time dummy
scoreboard objectives add hospital_state dummy
scoreboard objectives add hospital_delay dummy
scoreboard objectives add hospital_used_1 dummy
scoreboard objectives add hospital_used_2 dummy
scoreboard objectives add hospital_used_3 dummy
scoreboard objectives add hospital_used_4 dummy
scoreboard objectives add hospital_used_5 dummy
scoreboard objectives add hospital_used_6 dummy
scoreboard objectives add hospital_used_7 dummy
scoreboard objectives add hospital_used_8 dummy
scoreboard objectives add hospital_used_9 dummy
scoreboard objectives add hospital_used_10 dummy
scoreboard objectives add hospital_used_11 dummy
scoreboard objectives add hospital_used_12 dummy

#民生行动802“全民健身挑战”
scoreboard objectives add fitness_course dummy
scoreboard objectives add fitness_checkpoint dummy
scoreboard objectives add fitness_time dummy
scoreboard objectives add fitness_state dummy
scoreboard objectives add fitness_delay dummy
scoreboard objectives add fitness_target_1 dummy
scoreboard objectives add fitness_target_2 dummy
scoreboard objectives add fitness_target_3 dummy

#民生行动803“课间操领队”
scoreboard objectives add exercise_round dummy
scoreboard objectives add exercise_length dummy
scoreboard objectives add exercise_input dummy
scoreboard objectives add exercise_answer dummy
scoreboard objectives add exercise_target dummy
scoreboard objectives add exercise_wrong dummy
scoreboard objectives add exercise_time dummy
scoreboard objectives add exercise_state dummy
scoreboard objectives add exercise_delay dummy
scoreboard objectives add exercise_armed dummy
scoreboard objectives add exercise_preview dummy
scoreboard objectives add exercise_step_1 dummy
scoreboard objectives add exercise_step_2 dummy
scoreboard objectives add exercise_step_3 dummy
scoreboard objectives add exercise_step_4 dummy
scoreboard objectives add exercise_step_5 dummy
scoreboard objectives add exercise_step_6 dummy

#民生行动804“公交站调度”
scoreboard objectives add bus_queue_1 dummy
scoreboard objectives add bus_queue_2 dummy
scoreboard objectives add bus_queue_3 dummy
scoreboard objectives add bus_spawn_line dummy
scoreboard objectives add bus_spawn_time dummy
scoreboard objectives add bus_spawned dummy
scoreboard objectives add bus_answer dummy
scoreboard objectives add bus_valid dummy
scoreboard objectives add bus_success dummy
scoreboard objectives add bus_wrong dummy
scoreboard objectives add bus_time dummy
scoreboard objectives add bus_state dummy
scoreboard objectives add bus_delay dummy

#民生行动805“井盖安全巡检”
scoreboard objectives add manhole_selected dummy
scoreboard objectives add manhole_pick dummy
scoreboard objectives add manhole_repaired dummy
scoreboard objectives add manhole_time dummy
scoreboard objectives add manhole_state dummy
scoreboard objectives add manhole_delay dummy
scoreboard objectives add manhole_hits dummy
scoreboard objectives add manhole_need dummy
#——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
#下一轮全员准备状态，以及玩家丢出准备时钟的统计
scoreboard objectives add next_round_ready dummy
scoreboard objectives add next_round_clock minecraft.dropped:minecraft.clock
