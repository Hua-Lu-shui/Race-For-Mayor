#执行check函数对应的游戏流程
#检测已启用的决策方案触发器；trigger使用后会自动关闭，避免重复点击
#1为方案A，2为方案B，3为方案C
execute as @a[tag=rfm_participant,scores={decision_choice=1}] run function rfm:task/decision/dispatch_a
execute as @a[tag=rfm_participant,scores={decision_choice=2}] run function rfm:task/decision/dispatch_b
execute as @a[tag=rfm_participant,scores={decision_choice=3}] run function rfm:task/decision/dispatch_c
