#关闭准备状态，清理时钟和统计
scoreboard players set #waiting next_round_ready 0
clear @a minecraft:clock[minecraft:custom_data={next_round_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]
scoreboard players set @a next_round_clock 0
#神秘人只存在于第2、3、4回合结束后的办公室等待阶段；下一回合开始即离开
function rfm:collection/mysterious/cleanup

execute if score #round round matches 0 run tellraw @a {"text":"所有玩家已准备完成，第一回合开始！","color":"green","bold":true}
execute if score #round round matches 1.. run tellraw @a {"text":"所有玩家已准备完成，下一回合开始！","color":"green","bold":true}
function rfm:round/round
