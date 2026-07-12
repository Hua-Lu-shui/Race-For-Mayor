#当前行动玩家完成清理后统一进入旁观状态，并推进到下一项行动
scoreboard players set @s action_task 0
gamemode spectator @s
function rfm:task/action/sequence/next
