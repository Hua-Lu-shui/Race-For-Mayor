#小游戏2准备：不搭建场地，只传送所有玩家到共同起点、锁定并显示名称与规则
scoreboard players set #group_state group_state 4
scoreboard players set @a[tag=rfm_participant] group_ready 0
gamemode adventure @a[tag=rfm_participant]
effect clear @a[tag=rfm_participant] minecraft:levitation
execute as @a[tag=rfm_participant] run function rfm:collective/game/needle_gap/lock_position
function rfm:collective/game/needle_gap/announce
