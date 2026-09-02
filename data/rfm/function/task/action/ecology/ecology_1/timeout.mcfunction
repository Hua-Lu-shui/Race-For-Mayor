tellraw @a[tag=rfm_participant] {"translate":"rfm.text.c51362fd212d","color":"red","bold":true}
bossbar set rfm:emission_time visible false
function rfm:task/action/ecology/ecology_1/clear_drops
scoreboard players set @s emission_state 2
scoreboard players set @s emission_delay 40
