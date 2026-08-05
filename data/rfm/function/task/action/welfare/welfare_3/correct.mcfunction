#正确输入一个动作
scoreboard players add @s exercise_input 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.3 1
bossbar set rfm:exercise_time name [{"text":"\uE222","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE21E","font":"rfm:bossbar"},{"text":"课间操领队  ·  第 ","color":"red"},{"score":{"name":"@s","objective":"exercise_round"},"color":"yellow"},{"text":" / 3 轮  ·  已输入 ","color":"red"},{"score":{"name":"@s","objective":"exercise_input"},"color":"white"},{"text":" / ","color":"red"},{"score":{"name":"@s","objective":"exercise_length"},"color":"white"}]
execute if score @s exercise_input = @s exercise_length run function rfm:task/action/welfare/welfare_3/next_round
execute if score @s exercise_state matches 1 run title @s actionbar [{"text":"动作正确！已输入 ","color":"green"},{"score":{"name":"@s","objective":"exercise_input"},"color":"white"},{"text":" / ","color":"green"},{"score":{"name":"@s","objective":"exercise_length"},"color":"white"}]
