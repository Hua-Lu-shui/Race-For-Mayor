#第三个主标题显示获胜玩家名；此时再公布聊天消息并播放胜利音效
title @a clear
title @a times 10 120 40
title @a title {"selector":"@a[tag=rfm_winner]","separator":{"text":"、","color":"yellow"},"color":"yellow","bold":true}
tellraw @a [{"text":"统计完成，下一任市长是：","color":"gold","bold":true},{"selector":"@a[tag=rfm_winner]","separator":{"text":"、","color":"yellow"},"color":"yellow","bold":true},{"text":"！本局游戏结束。","color":"gold","bold":true}]
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1.0 0.8
execute as @a run function rfm:ending/stat_book/give

#在市政厅生成返回出生点的告示牌；点击后由返回函数统一复位游戏
setblock 49 -56 35 minecraft:oak_sign[rotation=8]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text":"游戏结束","color":"gold","bold":true}','{"text":"返回","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ending_return set 1"}}','{"text":"点击回到出生点","color":"gray"}','{"text":"并准备下一局","color":"yellow"}']}}
