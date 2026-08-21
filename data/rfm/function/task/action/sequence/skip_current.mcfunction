#跳过当前行动任务并继续处理下一名行动玩家
tellraw @a[tag=rfm_participant] {"text":"当前行动玩家没有在倒计时内选择任务，本次行动跳过。","color":"gray"}
function rfm:task/action/sequence/next
