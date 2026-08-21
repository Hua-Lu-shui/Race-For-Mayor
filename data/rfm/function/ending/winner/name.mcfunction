#第三个主标题显示获胜玩家名；此时再公布聊天消息并播放胜利音效
title @a clear
title @a times 10 120 40
title @a title {"selector":"@a[tag=rfm_winner]","separator":{"text":"、","color":"yellow"},"color":"yellow","bold":true}
tellraw @a [{"text":"统计完成，下一任市长是：","color":"gold","bold":true},{"selector":"@a[tag=rfm_winner]","separator":{"text":"、","color":"yellow"},"color":"yellow","bold":true},{"text":"！","color":"gold","bold":true}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 0.8
function rfm:ending/stat_book/prepare
execute as @a at @s run function rfm:ending/stat_book/issue

#在市政厅生成返回出生点的告示牌；点击后由返回函数统一复位游戏
setblock 49 -56 35 minecraft:air
setblock 49 -57 23 minecraft:cherry_sign[rotation=0]{front_text:{has_glowing_text:1b,messages:['{"text":""}','{"text":"返回","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ending_return set 1"}}','{"text":""}','{"text":""}']}}
