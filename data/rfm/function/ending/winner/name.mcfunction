#第三个主标题显示获胜玩家名；此时再公布聊天消息并播放胜利音效
title @a clear
title @a times 10 120 40
title @a title {"selector":"@a[tag=rfm_winner]","separator":{"text":"、","color":"yellow"},"color":"yellow","bold":true}
tellraw @a [{"text":"统计完成，下一任市长是：","color":"gold","bold":true},{"selector":"@a[tag=rfm_winner]","separator":{"text":"、","color":"yellow"},"color":"yellow","bold":true},{"text":"！本局游戏结束。","color":"gold","bold":true}]
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1.0 0.8
