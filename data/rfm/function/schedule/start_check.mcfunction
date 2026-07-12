#统计当前在线玩家人数
execute store result score #player_count player_count run execute if entity @a
#判断当前在线玩家人数是否小于等于8，如果是则执行rfm:schedule/start_delay函数，否则显示人数过多的提示信息
execute if score #player_count player_count matches ..8 run function rfm:schedule/start_delay
execute if score #player_count player_count matches 9.. run title @a title {"text":"人数过多，无法开始游戏","color":"red","bold":true}
execute if score #player_count player_count matches 9.. run title @a subtitle {"text":"本游戏最多支持 8 人","color":"white"}
