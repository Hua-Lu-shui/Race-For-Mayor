#当前行动玩家完成清理后保持冒险模式，并推进到下一项行动
scoreboard players set @s action_task 0
gamemode adventure @s
function rfm:task/action/sequence/next
