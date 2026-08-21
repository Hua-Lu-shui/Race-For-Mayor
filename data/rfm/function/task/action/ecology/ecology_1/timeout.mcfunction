#处理生态行动任务1倒计时结束后的失败结算
tellraw @a[tag=rfm_participant] {"text":"本次判断超时！","color":"red","bold":true}
bossbar set rfm:emission_time visible false
function rfm:task/action/ecology/ecology_1/clear_drops
scoreboard players set @s emission_state 2
scoreboard players set @s emission_delay 40
