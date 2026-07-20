#提前或超载发车，清空该线路并扣除2秒
scoreboard players add @s bus_wrong 1
scoreboard players remove @s bus_time 40
tellraw @a {"text":"发车人数不符合核定人数，扣除2秒！","color":"red","bold":true}
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0.7 1
function rfm:task/action/welfare/welfare_4/clear_selected
function rfm:task/action/welfare/welfare_4/reset_buttons
