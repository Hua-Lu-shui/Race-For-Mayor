#正确发车
scoreboard players add @s bus_success 1
tellraw @a [{"text":"发车人数正确！ ","color":"green","bold":true},{"score":{"name":"@s","objective":"bus_success"},"color":"yellow"},{"text":" / 6","color":"gray"}]
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2 1
function rfm:task/action/welfare/welfare_4/clear_selected
function rfm:task/action/welfare/welfare_4/reset_buttons
bossbar set rfm:bus_time name [{"text":"","font":"minecraft:default"},{"text":"\uE21A","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE226","font":"rfm:bossbar"},{"text":"公交站调度  ·  已正确发车 ","color":"red"},{"score":{"name":"@s","objective":"bus_success"},"color":"yellow"},{"text":" / 6","color":"red"}]
execute if score @s bus_success matches 6.. run function rfm:task/action/welfare/welfare_4/result
