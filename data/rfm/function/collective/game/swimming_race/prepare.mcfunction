#小游戏1准备：不搭建场地，只传送玩家、锁定起点并显示名称与规则
scoreboard players set #group_state group_state 4
scoreboard players set @a group_ready 0
gamemode adventure @a
execute as @a run function rfm:collective/game/swimming_race/lock_position
function rfm:collective/game/swimming_race/announce
