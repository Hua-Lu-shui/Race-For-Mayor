scoreboard players add @s bus_success 1
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dda39ee8bd99","color":"green","bold":true},{"score":{"name":"@s","objective":"bus_success"},"color":"yellow"},{"text":" / 6","color":"gray"}]
playsound minecraft:entity.experience_orb.pickup master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1
function rfm:task/action/welfare/welfare_4/clear_selected
function rfm:task/action/welfare/welfare_4/reset_buttons
bossbar set rfm:bus_time name [{"translate":"rfm.text.a08c1f9f0020","color":"red"},{"score":{"name":"@s","objective":"bus_success"},"color":"yellow"},{"text":" / 6","color":"red"}]
execute if score @s bus_success matches 6.. run function rfm:task/action/welfare/welfare_4/result
