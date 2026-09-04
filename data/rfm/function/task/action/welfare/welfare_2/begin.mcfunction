scoreboard players set @s fitness_checkpoint 0
scoreboard players set @s fitness_time 240
scoreboard players set @s fitness_state 1

bossbar set rfm:fitness_time players @a[tag=rfm_participant]
bossbar set rfm:fitness_time max 240
bossbar set rfm:fitness_time value 240
bossbar set rfm:fitness_time name {"translate":"rfm.text.56ef167687bf","color":"red"}
bossbar set rfm:fitness_time visible true

title @s actionbar [{"translate":"rfm.text.76a0ba5c77e9","color":"#FFCB77","bold":true},{"translate":"rfm.text.3f9b37183879","color":"white"}]
