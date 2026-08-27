execute unless score #session_online game_session = #session_size game_session run schedule function rfm:ending/winner/name 20t replace
execute unless score #session_online game_session = #session_size game_session run return 0
#第三个主标题显示获胜玩家名；此时再公布聊天消息并播放胜利音效
title @a[tag=rfm_participant] clear
title @a[tag=rfm_participant] times 10 120 40
title @a[tag=rfm_participant] title {"selector":"@a[tag=rfm_participant,tag=rfm_winner]","separator":{"text":"、","color":"yellow"},"color":"yellow","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.c216f3cd3d91","color":"gold","bold":true},{"selector":"@a[tag=rfm_participant,tag=rfm_winner]","separator":{"text":"、","color":"yellow"},"color":"yellow","bold":true},{"text":"！","color":"gold","bold":true}]
execute as @a[tag=rfm_participant] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 0.8
execute as @a[tag=rfm_participant] at @s run function rfm:ending/stat_book/give

#在市政厅生成返回出生点的告示牌；点击后由返回函数统一复位游戏
setblock 49 -56 35 minecraft:air
setblock 49 -57 23 minecraft:cherry_sign[rotation=0]{front_text:{has_glowing_text:1b,messages:['{"text":""}','{"translate":"rfm.text.11d024154013","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ending_return set 1"}}','{"text":"Return","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ending_return set 1"}}','{"text":""}']}}
