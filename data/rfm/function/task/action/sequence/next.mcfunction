#具体行动任务结束或超时后调用本函数，进入下一执行顺序
scoreboard players add #current_action action_order 1

#存在下一名行动玩家时启动其任务
execute if entity @a[scores={action_order=2}] if score #current_action action_order matches 2 run function rfm:task/action/sequence/start_current

#不存在下一任务，或第二项任务已经结束时，结束本轮行动阶段
execute unless entity @a[scores={action_order=2}] if score #current_action action_order matches 2 run function rfm:task/action/sequence/finish
execute if score #current_action action_order matches 3.. run function rfm:task/action/sequence/finish
