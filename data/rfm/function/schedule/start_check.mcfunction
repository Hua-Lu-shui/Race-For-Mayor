execute if score #start_pending phase matches 1 run return 0
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
execute store result score #player_count player_count run execute if entity @a
execute if score #player_count player_count matches 2..8 run function rfm:schedule/start_delay
execute if score #player_count player_count matches ..1 run title @a title {"translate":"rfm.text.5393da6fc690","color":"red","bold":true}
execute if score #player_count player_count matches ..1 run title @a subtitle {"translate":"rfm.text.b55fea39d3e1","color":"white"}
execute if score #player_count player_count matches 9.. run title @a title {"translate":"rfm.text.4cdf9bb165a4","color":"red","bold":true}
execute if score #player_count player_count matches 9.. run title @a subtitle {"translate":"rfm.text.a84a4b6ba01f","color":"white"}
