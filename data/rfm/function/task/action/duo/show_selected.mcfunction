#双人行动任务的统一公布入口；具体任务完成后在这里按编号调用对应函数
tellraw @a [{"text":"【双人行动任务】","color":"gold","bold":true},{"text":" 队长：","color":"white"},{"selector":"@a[scores={action_role=2},limit=1]","color":"white"},{"text":"  队员：","color":"white"},{"selector":"@a[scores={action_role=3},limit=1]","color":"white"}]
tellraw @a [{"text":"已抽取双人行动任务编号：","color":"gray"},{"score":{"name":"@s","objective":"action_task"},"color":"gold"},{"text":"。具体任务内容尚未制作。","color":"gray"}]
