execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0
execute unless score #start_pending phase matches 0..1 run scoreboard players set #start_pending phase 0
setblock 35 -49 -15 minecraft:cherry_wall_sign[facing=east,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"translate":"rfm.text.69ed896366d3","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 1"}}','{"text":"Celebrity","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 1"}}','""']}}
setblock 35 -49 -16 minecraft:cherry_wall_sign[facing=east,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"translate":"rfm.text.b91aed4fedef","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 2"}}','{"text":"Entrepreneur","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 2"}}','""']}}
setblock 35 -49 -17 minecraft:cherry_wall_sign[facing=east,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"translate":"rfm.text.a64d79f9cbf2","color":"red","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 3"}}','{"text":"Community Leader","color":"red","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 3"}}','""']}}
setblock 35 -49 -18 minecraft:cherry_wall_sign[facing=east,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"translate":"rfm.text.d283b25d4b3c","color":"green","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 4"}}','{"text":"Scholar","color":"green","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 4"}}','""']}}
setblock 35 -49 -19 minecraft:cherry_wall_sign[facing=east,waterlogged=false]{front_text:{color:"light_gray",has_glowing_text:1b,messages:['""','{"translate":"rfm.text.6d27f34521b6","color":"#F5F5DC","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 5"}}','{"text":"Civil Servant","color":"#F5F5DC","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 5"}}','""']}}
setblock 35 -49 -20 minecraft:cherry_wall_sign[facing=east,waterlogged=false]{front_text:{color:"orange",has_glowing_text:1b,messages:['""','{"translate":"rfm.text.ae87d8da0853","color":"#FFA500","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 6"}}','{"text":"Military Officer","color":"#FFA500","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 6"}}','""']}}
setblock 35 -49 -21 minecraft:cherry_wall_sign[facing=east,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"translate":"rfm.text.786c0074d224","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 7"}}','{"text":"Lawyer","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 7"}}','""']}}
setblock 35 -49 -22 minecraft:cherry_wall_sign[facing=east,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"translate":"rfm.text.552caeb5bd54","color":"#012696","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 8"}}','{"text":"Doctor","color":"#012696","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 8"}}','""']}}
setblock 45 -50 -13 minecraft:cherry_wall_sign[facing=north,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"translate":"rfm.text.b6edf34dbad7","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 9"}}','{"text":"Tutorial","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 9"}}','""']}}
execute unless score #start_pending phase matches 1 run setblock 49 -50 -13 minecraft:cherry_wall_sign[facing=north,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"translate":"rfm.text.2857a3704a65","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 10"}}','{"text":"Start Game","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 10"}}','""']}}
setblock 53 -50 -13 minecraft:cherry_wall_sign[facing=north,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"translate":"rfm.text.bed172efc953","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 13"}}','{"text":"About","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 13"}}','""']}}
function rfm:lobby/create_authors
scoreboard objectives add room dummy
scoreboard objectives add lobby_action trigger
scoreboard objectives add game_setting dummy
execute unless score #count_animation game_setting matches 0..1 run scoreboard players set #count_animation game_setting 1
execute unless score #decision_time game_setting matches 20 unless score #decision_time game_setting matches 30 unless score #decision_time game_setting matches 40 run scoreboard players set #decision_time game_setting 30
execute unless score #collection_auto_refresh game_setting matches 0..1 run scoreboard players set #collection_auto_refresh game_setting 0
execute unless score #event_every_round game_setting matches 0..1 run scoreboard players set #event_every_round game_setting 0
function rfm:settings/render
scoreboard objectives add player_count dummy
scoreboard objectives add round dummy
scoreboard objectives add choose_time dummy
execute unless score #start_pending phase matches 1 run bossbar remove rfm:choose_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:choose_time [{"text":"","font":"minecraft:default"},{"text":"\uE20E","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE232","font":"rfm:bossbar"},{"translate":"rfm.text.c9ab18509d8b","color":"light_purple"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:choose_time color white

execute unless score #start_pending phase matches 1 run bossbar remove rfm:speech_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:speech_time [{"translate":"rfm.text.4ac31a4c067b","color":"aqua"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:speech_time color blue
execute unless score #start_pending phase matches 1 run bossbar set rfm:speech_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:visit_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:visit_time [{"translate":"rfm.text.0a4c3ad3ca66","color":"aqua"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:visit_time color blue
execute unless score #start_pending phase matches 1 run bossbar set rfm:visit_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:photo_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:photo_time [{"translate":"rfm.text.f9c4cd98b08c","color":"aqua"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:photo_time color blue
execute unless score #start_pending phase matches 1 run bossbar set rfm:photo_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:qa_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:qa_time [{"translate":"rfm.text.b5a2e32e26f7","color":"aqua"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:qa_time color blue
execute unless score #start_pending phase matches 1 run bossbar set rfm:qa_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:cheer_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:cheer_time [{"translate":"rfm.text.2e86c018ee6c","color":"aqua"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:cheer_time color blue
execute unless score #start_pending phase matches 1 run bossbar set rfm:cheer_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:emission_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:emission_time [{"translate":"rfm.text.336edd590665","color":"green"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:emission_time color green
execute unless score #start_pending phase matches 1 run bossbar set rfm:emission_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:sample_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:sample_time [{"translate":"rfm.text.0de4f944e411","color":"blue"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:sample_time color green
execute unless score #start_pending phase matches 1 run bossbar set rfm:sample_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:park_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:park_time [{"translate":"rfm.text.14554e8f2cc8","color":"green"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:park_time color green
execute unless score #start_pending phase matches 1 run bossbar set rfm:park_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:trash_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:trash_time [{"translate":"rfm.text.0a5a7ffb4494","color":"green"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:trash_time color green
execute unless score #start_pending phase matches 1 run bossbar set rfm:trash_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:energy_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:energy_time [{"translate":"rfm.text.dea9f8ca0a01","color":"yellow"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:energy_time color green
execute unless score #start_pending phase matches 1 run bossbar set rfm:energy_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:market_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:market_time [{"translate":"rfm.text.68b20f6eed5b","color":"yellow"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:market_time color yellow
execute unless score #start_pending phase matches 1 run bossbar set rfm:market_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:negotiation_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:negotiation_time [{"translate":"rfm.text.4cdf00cba2b6","color":"yellow"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:negotiation_time color yellow
execute unless score #start_pending phase matches 1 run bossbar set rfm:negotiation_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:audit_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:audit_time [{"translate":"rfm.text.6917e7aba53e","color":"yellow"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:audit_time color yellow
execute unless score #start_pending phase matches 1 run bossbar set rfm:audit_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:supply_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:supply_time [{"translate":"rfm.text.e0c9d49f9ac6","color":"yellow"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:supply_time color yellow
execute unless score #start_pending phase matches 1 run bossbar set rfm:supply_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:employment_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:employment_time [{"translate":"rfm.text.c96143a9c522","color":"yellow"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:employment_time color yellow
execute unless score #start_pending phase matches 1 run bossbar set rfm:employment_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:hospital_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:hospital_time [{"translate":"rfm.text.5de269e96a6e","color":"red"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:hospital_time color red
execute unless score #start_pending phase matches 1 run bossbar set rfm:hospital_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:fitness_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:fitness_time [{"translate":"rfm.text.af029b01d298","color":"red"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:fitness_time color red
execute unless score #start_pending phase matches 1 run bossbar set rfm:fitness_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:exercise_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:exercise_time [{"translate":"rfm.text.364035c34322","color":"red"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:exercise_time color red
execute unless score #start_pending phase matches 1 run bossbar set rfm:exercise_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:bus_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:bus_time [{"translate":"rfm.text.7db9d3047a8a","color":"red"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:bus_time color red
execute unless score #start_pending phase matches 1 run bossbar set rfm:bus_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:cooking_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:cooking_time [{"translate":"rfm.text.b92864cb1c0b","color":"red"}]
execute unless score #start_pending phase matches 1 run bossbar set rfm:cooking_time color red
execute unless score #start_pending phase matches 1 run bossbar set rfm:cooking_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:swim_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:swim_time {"translate":"rfm.text.e6cdff9d469a","color":"aqua"}
execute unless score #start_pending phase matches 1 run bossbar set rfm:swim_time color blue
execute unless score #start_pending phase matches 1 run bossbar set rfm:swim_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:needle_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:needle_time {"translate":"rfm.text.7c5820266a97","color":"light_purple"}
execute unless score #start_pending phase matches 1 run bossbar set rfm:needle_time color purple
execute unless score #start_pending phase matches 1 run bossbar set rfm:needle_time visible false

execute unless score #start_pending phase matches 1 run bossbar remove rfm:lottery_time
execute unless score #start_pending phase matches 1 run bossbar add rfm:lottery_time {"translate":"rfm.text.6afd443ee77c","color":"gold"}
execute unless score #start_pending phase matches 1 run bossbar set rfm:lottery_time color yellow
execute unless score #start_pending phase matches 1 run bossbar set rfm:lottery_time visible false
schedule function rfm:display/display 1t replace
