execute unless score #session_online game_session = #session_size game_session run schedule function rfm:ending/winner/next_mayor 20t replace
execute unless score #session_online game_session = #session_size game_session run return 0
title @a[tag=rfm_participant] clear
title @a[tag=rfm_participant] times 10 40 10
title @a[tag=rfm_participant] title {"translate":"rfm.text.674915ddb96a","color":"gold","bold":true}
schedule function rfm:ending/winner/name 60t replace
