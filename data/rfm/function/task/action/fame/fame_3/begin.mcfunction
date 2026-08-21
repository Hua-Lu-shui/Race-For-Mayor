#随机抽取五位不重复居民，并将抽取顺序对应到五个站位
scoreboard players set @s photo_selected 0
scoreboard players set @s photo_slot_1 0
scoreboard players set @s photo_slot_2 0
scoreboard players set @s photo_slot_3 0
scoreboard players set @s photo_slot_4 0
scoreboard players set @s photo_slot_5 0
scoreboard players set @s photo_attempt 0
scoreboard players set @s photo_success 0
scoreboard players set @s photo_time 700
scoreboard players set @s photo_seconds 35
scoreboard players set #twenty photo_seconds 20
scoreboard players set @s photo_state 1
function rfm:task/action/fame/fame_3/roll_target_1
function rfm:task/action/fame/fame_3/roll_target_2
function rfm:task/action/fame/fame_3/roll_target_3
function rfm:task/action/fame/fame_3/roll_target_4
function rfm:task/action/fame/fame_3/roll_target_5
function rfm:task/action/fame/fame_3/create_requirements
function rfm:task/action/fame/fame_3/reset_buttons

tellraw @a[tag=rfm_participant] [{"text":"站位册已发放。翻书查看","color":"white"},{"text":"五个站位要求","color":"#FFD166","bold":true},{"text":"，","color":"white"},{"text":"右键选择居民","color":"#67D5FF","bold":true},{"text":"，再右键对应的青色脚底方块安排位置。","color":"white"}]
bossbar set rfm:photo_time players @a[tag=rfm_participant]
bossbar set rfm:photo_time max 35
bossbar set rfm:photo_time value 35
bossbar set rfm:photo_time visible true
