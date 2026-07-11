#从第一项行动任务开始执行
scoreboard players set #current_action action_order 1

tellraw @a {"text":"行动任务阶段开始。所有行动任务将按照顺序依次执行。","color":"gold","bold":true}
function rfm:task/action/sequence/start_current
