function rfm:collection/deliver
scoreboard players operation #next_round round = #round round
scoreboard players add #next_round round 1
execute store result storage rfm:round_clock next_round int 1 run scoreboard players get #next_round round
function rfm:collection/give_clock with storage rfm:round_clock
