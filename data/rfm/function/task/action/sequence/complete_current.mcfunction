#当前行动玩家完成清理后保持冒险模式；留出3秒展示任务结算播报，再推进到下一项行动
scoreboard players set @s action_task 0
gamemode adventure @s
schedule function rfm:task/action/sequence/next 60t replace
