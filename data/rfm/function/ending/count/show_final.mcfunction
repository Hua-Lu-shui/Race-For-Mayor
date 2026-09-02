scoreboard players operation #shown_fame settle_value = @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_fame
scoreboard players operation #shown_economy settle_value = @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_economy
scoreboard players operation #shown_welfare settle_value = @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_welfare
scoreboard players operation #shown_ecology settle_value = @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_ecology
title @a[tag=rfm_participant] times 0 60 0
title @a[tag=rfm_participant] title [{"score":{"name":"#shown_fame","objective":"settle_value"},"color":"aqua","bold":true},{"text":"   "},{"score":{"name":"#shown_economy","objective":"settle_value"},"color":"yellow","bold":true},{"text":"   "},{"score":{"name":"#shown_welfare","objective":"settle_value"},"color":"red","bold":true},{"text":"   "},{"score":{"name":"#shown_ecology","objective":"settle_value"},"color":"green","bold":true}]
schedule function rfm:ending/combine 60t replace
