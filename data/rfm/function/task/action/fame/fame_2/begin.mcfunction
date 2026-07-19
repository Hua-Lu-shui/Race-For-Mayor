#随机抽取拜访路线并开始75秒计时
execute store result score @s visit_route run random value 1..6
scoreboard players set @s visit_step 0
scoreboard players set @s visit_target 0
scoreboard players set @s visit_answer 0
scoreboard players set @s visit_wrong 0
scoreboard players set @s visit_time 1500
scoreboard players set @s visit_state 1
function rfm:task/action/fame/fame_2/reset_buttons
function rfm:task/action/fame/fame_2/give_route
function rfm:task/action/fame/fame_2/prepare_target

bossbar set rfm:visit_time players @a
bossbar set rfm:visit_time max 1500
bossbar set rfm:visit_time value 1500
bossbar set rfm:visit_time visible true
