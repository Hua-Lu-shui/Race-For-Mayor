
execute if score @s action_task matches 601 if score @s speech_state matches 2 at @s run function rfm:task/action/fame/fame_1/wait_ready
execute if score @s action_task matches 601 if score @s speech_state matches 3 run function rfm:task/action/fame/fame_1/countdown
execute if score @s action_task matches 601 if score @s speech_state matches 1 at @s run function rfm:task/action/fame/fame_1/tick
execute if score @s action_task matches 601 if score @s speech_state matches 5 run function rfm:task/action/fame/fame_1/intermission
execute if score @s action_task matches 602 if score @s visit_state matches 2 at @s run function rfm:task/action/fame/fame_2/wait_ready
execute if score @s action_task matches 602 if score @s visit_state matches 3 run function rfm:task/action/fame/fame_2/countdown
execute if score @s action_task matches 602 if score @s visit_state matches 1 at @s run function rfm:task/action/fame/fame_2/tick
execute if score @s action_task matches 603 if score @s photo_state matches 2 at @s run function rfm:task/action/fame/fame_3/wait_ready
execute if score @s action_task matches 603 if score @s photo_state matches 3 run function rfm:task/action/fame/fame_3/countdown
execute if score @s action_task matches 603 if score @s photo_state matches 1 at @s run function rfm:task/action/fame/fame_3/tick
execute if score @s action_task matches 604 if score @s qa_state matches 2 at @s run function rfm:task/action/fame/fame_4/wait_ready
execute if score @s action_task matches 604 if score @s qa_state matches 3 run function rfm:task/action/fame/fame_4/countdown
execute if score @s action_task matches 604 if score @s qa_state matches 1 at @s run function rfm:task/action/fame/fame_4/tick
execute if score @s action_task matches 604 if score @s qa_state matches 5 run function rfm:task/action/fame/fame_4/intermission
execute if score @s action_task matches 605 if score @s cheer_state matches 2 at @s run function rfm:task/action/fame/fame_5/wait_ready
execute if score @s action_task matches 605 if score @s cheer_state matches 3 run function rfm:task/action/fame/fame_5/countdown
execute if score @s action_task matches 605 if score @s cheer_state matches 1 at @s run function rfm:task/action/fame/fame_5/tick

execute if score @s action_task matches 901 if score @s emission_state matches 5 at @s run function rfm:task/action/ecology/ecology_1/wait_ready
execute if score @s action_task matches 901 if score @s emission_state matches 4 run function rfm:task/action/ecology/ecology_1/countdown
execute if score @s action_task matches 901 if score @s emission_state matches 1 at @s run function rfm:task/action/ecology/ecology_1/tick
execute if score @s action_task matches 901 if score @s emission_state matches 2 run function rfm:task/action/ecology/ecology_1/intermission
execute if score @s action_task matches 902 if score @s sample_state matches 2 at @s run function rfm:task/action/ecology/ecology_2/wait_ready
execute if score @s action_task matches 902 if score @s sample_state matches 3 run function rfm:task/action/ecology/ecology_2/countdown
execute if score @s action_task matches 902 if score @s sample_state matches 1 at @s run function rfm:task/action/ecology/ecology_2/tick
execute if score @s action_task matches 903 if score @s park_state matches 2 at @s run function rfm:task/action/ecology/ecology_3/wait_ready
execute if score @s action_task matches 903 if score @s park_state matches 3 run function rfm:task/action/ecology/ecology_3/countdown
execute if score @s action_task matches 903 if score @s park_state matches 1 run function rfm:task/action/ecology/ecology_3/tick
execute if score @s action_task matches 904 if score @s trash_state matches 2 at @s run function rfm:task/action/ecology/ecology_4/wait_ready
execute if score @s action_task matches 904 if score @s trash_state matches 3 run function rfm:task/action/ecology/ecology_4/countdown
execute if score @s action_task matches 904 if score @s trash_state matches 1 run function rfm:task/action/ecology/ecology_4/tick
execute if score @s action_task matches 905 if score @s energy_state matches 2 at @s run function rfm:task/action/ecology/ecology_5/wait_ready
execute if score @s action_task matches 905 if score @s energy_state matches 3 run function rfm:task/action/ecology/ecology_5/countdown
execute if score @s action_task matches 905 if score @s energy_state matches 1 run function rfm:task/action/ecology/ecology_5/tick

execute if score @s action_task matches 701 if score @s market_state matches 2 at @s run function rfm:task/action/economy/economy_1/wait_ready
execute if score @s action_task matches 701 if score @s market_state matches 3 run function rfm:task/action/economy/economy_1/countdown
execute if score @s action_task matches 701 if score @s market_state matches 1 run function rfm:task/action/economy/economy_1/tick
execute if score @s action_task matches 702 if score @s negotiation_state matches 2 at @s run function rfm:task/action/economy/economy_2/wait_ready
execute if score @s action_task matches 702 if score @s negotiation_state matches 3 run function rfm:task/action/economy/economy_2/countdown
execute if score @s action_task matches 702 if score @s negotiation_state matches 1 run function rfm:task/action/economy/economy_2/tick
execute if score @s action_task matches 703 if score @s audit_state matches 2 at @s run function rfm:task/action/economy/economy_3/wait_ready
execute if score @s action_task matches 703 if score @s audit_state matches 3 run function rfm:task/action/economy/economy_3/countdown
execute if score @s action_task matches 703 if score @s audit_state matches 1 run function rfm:task/action/economy/economy_3/tick
execute if score @s action_task matches 704 if score @s supply_state matches 2 at @s run function rfm:task/action/economy/economy_4/wait_ready
execute if score @s action_task matches 704 if score @s supply_state matches 3 run function rfm:task/action/economy/economy_4/countdown
execute if score @s action_task matches 704 if score @s supply_state matches 1 run function rfm:task/action/economy/economy_4/tick
execute if score @s action_task matches 705 if score @s employment_state matches 2 at @s run function rfm:task/action/economy/economy_5/wait_ready
execute if score @s action_task matches 705 if score @s employment_state matches 3 run function rfm:task/action/economy/economy_5/countdown
execute if score @s action_task matches 705 if score @s employment_state matches 1 run function rfm:task/action/economy/economy_5/tick

execute if score @s action_task matches 801 if score @s hospital_state matches 2 at @s run function rfm:task/action/welfare/welfare_1/wait_ready
execute if score @s action_task matches 801 if score @s hospital_state matches 3 run function rfm:task/action/welfare/welfare_1/countdown
execute if score @s action_task matches 801 if score @s hospital_state matches 1 run function rfm:task/action/welfare/welfare_1/tick
execute if score @s action_task matches 802 if score @s fitness_state matches 2 at @s run function rfm:task/action/welfare/welfare_2/wait_ready
execute if score @s action_task matches 802 if score @s fitness_state matches 3 run function rfm:task/action/welfare/welfare_2/countdown
execute if score @s action_task matches 802 if score @s fitness_state matches 1 at @s run function rfm:task/action/welfare/welfare_2/tick
execute if score @s action_task matches 803 if score @s exercise_state matches 2 at @s run function rfm:task/action/welfare/welfare_3/wait_ready
execute if score @s action_task matches 803 if score @s exercise_state matches 3 run function rfm:task/action/welfare/welfare_3/countdown
execute if score @s action_task matches 803 if score @s exercise_state matches 5 run function rfm:task/action/welfare/welfare_3/preview
execute if score @s action_task matches 803 if score @s exercise_state matches 1 at @s run function rfm:task/action/welfare/welfare_3/tick
execute if score @s action_task matches 804 if score @s bus_state matches 2 at @s run function rfm:task/action/welfare/welfare_4/wait_ready
execute if score @s action_task matches 804 if score @s bus_state matches 3 run function rfm:task/action/welfare/welfare_4/countdown
execute if score @s action_task matches 804 if score @s bus_state matches 1 at @s run function rfm:task/action/welfare/welfare_4/tick
execute if score @s action_task matches 805 if score @s cooking_state matches 2 at @s run function rfm:task/action/welfare/welfare_5/wait_ready
execute if score @s action_task matches 805 if score @s cooking_state matches 3 run function rfm:task/action/welfare/welfare_5/countdown
execute if score @s action_task matches 805 if score @s cooking_state matches 1 at @s run function rfm:task/action/welfare/welfare_5/tick
