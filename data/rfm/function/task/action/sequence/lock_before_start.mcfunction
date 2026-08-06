#行动任务开始前锁定行动玩家坐标；不指定朝向，因此玩家仍可自由转动视角

#名誉行动601—605
execute if score @s action_task matches 601 if score @s speech_state matches 2..3 run tp @s 119 -58 -18
execute if score @s action_task matches 602 if score @s visit_state matches 2..3 run tp @s 143 -58 -31
execute if score @s action_task matches 603 if score @s photo_state matches 2..3 run tp @s 180 -59 -18
execute if score @s action_task matches 604 if score @s qa_state matches 2..3 run tp @s 660 -60 104
execute if score @s action_task matches 605 if score @s cheer_state matches 2..3 run tp @s 720 -60 104

#生态行动901—905
execute if score @s action_task matches 901 if score @s emission_state matches 4..5 run tp @s 120 -55 68
execute if score @s action_task matches 902 if score @s sample_state matches 2..3 run tp @s 144 -57 69
execute if score @s action_task matches 903 if score @s park_state matches 2..3 run tp @s 206 -58 63
execute if score @s action_task matches 904 if score @s trash_state matches 2..3 run tp @s 236 -59 69
execute if score @s action_task matches 905 if score @s energy_state matches 2..3 run tp @s 263 -59 76

#经济行动701—705
execute if score @s action_task matches 701 if score @s market_state matches 2..3 run tp @s 114 -59 22
execute if score @s action_task matches 702 if score @s negotiation_state matches 2..3 run tp @s 146 -58 22
execute if score @s action_task matches 703 if score @s audit_state matches 2..3 run tp @s 162 -58 18
execute if score @s action_task matches 704 if score @s supply_state matches 2..3 run tp @s 181 -58 19
execute if score @s action_task matches 705 if score @s employment_state matches 2..3 run tp @s 235 -58 25

#民生行动801—804
execute if score @s action_task matches 801 if score @s hospital_state matches 2..3 run tp @s 119 -58 -18
execute if score @s action_task matches 802 if score @s fitness_state matches 2..3 if score @s fitness_course matches 1 run tp @s 798 -60 104
execute if score @s action_task matches 802 if score @s fitness_state matches 2..3 if score @s fitness_course matches 2 run tp @s 798 -60 116
execute if score @s action_task matches 802 if score @s fitness_state matches 2..3 if score @s fitness_course matches 3 run tp @s 798 -60 92
execute if score @s action_task matches 803 if score @s exercise_state matches 2..3 run tp @s 900 -60 104
execute if score @s action_task matches 803 if score @s exercise_state matches 5 run tp @s 900 -60 104
execute if score @s action_task matches 804 if score @s bus_state matches 2..3 run tp @s 948 -60 114
execute if score @s action_task matches 805 if score @s manhole_state matches 2..3 run tp @s 1004 -60 117
