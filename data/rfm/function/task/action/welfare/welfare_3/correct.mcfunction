#正确输入一个动作
scoreboard players add @s exercise_input 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.3 1
bossbar set rfm:exercise_time name [{"translate":"rfm.text.22999089974d","color":"red"},{"score":{"name":"@s","objective":"exercise_round"},"color":"yellow"},{"translate":"rfm.text.a624453a03d0","color":"red"},{"score":{"name":"@s","objective":"exercise_input"},"color":"white"},{"text":" / ","color":"red"},{"score":{"name":"@s","objective":"exercise_length"},"color":"white"}]
execute if score @s exercise_input = @s exercise_length run function rfm:task/action/welfare/welfare_3/next_round
execute if score @s exercise_state matches 1 run title @s actionbar [{"translate":"rfm.text.908e4ab6b0ca","color":"green"},{"score":{"name":"@s","objective":"exercise_input"},"color":"white"},{"text":" / ","color":"green"},{"score":{"name":"@s","objective":"exercise_length"},"color":"white"}]
