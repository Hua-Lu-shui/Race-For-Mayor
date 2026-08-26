#执行start check函数对应的游戏流程
#开始倒计时或本局进行中时，不允许再次触发开始流程
execute if score #start_pending phase matches 1 run return 0
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
#统计当前在线玩家人数
execute store result score #player_count player_count run execute if entity @a
#仅允许2至8名在线玩家开始游戏，人数不足或过多时显示对应提示
execute if score #player_count player_count matches 2..8 run function rfm:schedule/start_delay
execute if score #player_count player_count matches ..1 run title @a title {"translate":"rfm.text.5393da6fc690","color":"red","bold":true}
execute if score #player_count player_count matches ..1 run title @a subtitle {"translate":"rfm.text.b55fea39d3e1","color":"white"}
execute if score #player_count player_count matches 9.. run title @a title {"translate":"rfm.text.4cdf9bb165a4","color":"red","bold":true}
execute if score #player_count player_count matches 9.. run title @a subtitle {"translate":"rfm.text.a84a4b6ba01f","color":"white"}
