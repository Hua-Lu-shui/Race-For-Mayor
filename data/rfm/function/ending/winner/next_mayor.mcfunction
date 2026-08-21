execute unless score #session_online game_session = #session_size game_session run schedule function rfm:ending/winner/next_mayor 20t replace
execute unless score #session_online game_session = #session_size game_session run return 0
#第二个主标题；不设置副标题
title @a[tag=rfm_participant] clear
title @a[tag=rfm_participant] times 10 40 10
title @a[tag=rfm_participant] title {"text":"下一任市长是","color":"gold","bold":true}
schedule function rfm:ending/winner/name 60t replace
