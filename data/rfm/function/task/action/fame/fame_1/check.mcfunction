#立即复位按钮，并判断玩家是否选择了粒子对应的应对方式
function rfm:task/action/fame/fame_1/reset_buttons

execute if score @s speech_answer = @s speech_category run scoreboard players add @s speech_correct 1
execute if score @s speech_answer = @s speech_category run tellraw @a {"text":"应对成功，演讲顺利继续！","color":"green","bold":true}
execute if score @s speech_answer = @s speech_category run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3 1

execute unless score @s speech_answer = @s speech_category run scoreboard players remove @s speech_score 1
execute unless score @s speech_answer = @s speech_category run tellraw @a {"text":"应对方式错误，现场支持度 -1。","color":"red","bold":true}
execute unless score @s speech_answer = @s speech_category run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.9 1

scoreboard players add @s speech_round 1
execute if score @s speech_round matches ..9 run scoreboard players set @s speech_state 5
execute if score @s speech_round matches ..9 run scoreboard players set @s speech_delay 15
execute if score @s speech_round matches 10.. run function rfm:task/action/fame/fame_1/result
