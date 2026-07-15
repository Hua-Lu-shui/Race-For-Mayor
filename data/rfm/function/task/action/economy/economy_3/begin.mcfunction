execute store result score @s audit_target run random value 1..3
function rfm:task/action/economy/economy_3/select_books
scoreboard players set @s audit_answer 0
scoreboard players set @s audit_correct 0
scoreboard players set @s audit_time 2400
scoreboard players set @s audit_state 1

bossbar set rfm:audit_time players @a
bossbar set rfm:audit_time max 2400
bossbar set rfm:audit_time value 2400
bossbar set rfm:audit_time visible true

tellraw @s {"text":"核查开始：右键拾取三本账本阅读，最后选中虚假账本，按Q扔到财政负责人身边。","color":"yellow"}
