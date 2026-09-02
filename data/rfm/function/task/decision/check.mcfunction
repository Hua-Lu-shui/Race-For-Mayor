execute as @a[tag=rfm_participant,scores={decision_choice=1}] run function rfm:task/decision/dispatch_a
execute as @a[tag=rfm_participant,scores={decision_choice=2}] run function rfm:task/decision/dispatch_b
execute as @a[tag=rfm_participant,scores={decision_choice=3}] run function rfm:task/decision/dispatch_c
