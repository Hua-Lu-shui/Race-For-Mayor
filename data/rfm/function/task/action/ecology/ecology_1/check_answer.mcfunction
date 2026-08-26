#记录正确答案并显示本次结果
execute if score @s emission_answer = @s emission_target run scoreboard players add @s emission_correct 1
execute if score @s emission_answer = @s emission_target run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.3a05e5936de0","color":"green","bold":true}
execute unless score @s emission_answer = @s emission_target run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.fc27dbb0fdb3","color":"red","bold":true}
bossbar set rfm:emission_time visible false

#清除本次扔出的任务纸条，进入2秒间隔
function rfm:task/action/ecology/ecology_1/clear_drops
scoreboard players set @s emission_state 2
scoreboard players set @s emission_delay 40
