scoreboard players remove #group_time group_time 1
execute store result bossbar rfm:swim_time value run scoreboard players get #group_time group_time

execute as @a[tag=rfm_participant,scores={room=1,group_finished=0}] positioned 205 -55 149 if entity @s[distance=..3] if block 205 -55 149 minecraft:stone_button[powered=true] run function rfm:collective/game/swimming_race/finish_player
execute as @a[tag=rfm_participant,scores={room=2,group_finished=0}] positioned 205 -55 143 if entity @s[distance=..3] if block 205 -55 143 minecraft:stone_button[powered=true] run function rfm:collective/game/swimming_race/finish_player
execute as @a[tag=rfm_participant,scores={room=3,group_finished=0}] positioned 205 -55 137 if entity @s[distance=..3] if block 205 -55 137 minecraft:stone_button[powered=true] run function rfm:collective/game/swimming_race/finish_player
execute as @a[tag=rfm_participant,scores={room=4,group_finished=0}] positioned 205 -55 131 if entity @s[distance=..3] if block 205 -55 131 minecraft:stone_button[powered=true] run function rfm:collective/game/swimming_race/finish_player
execute as @a[tag=rfm_participant,scores={room=5,group_finished=0}] positioned 205 -55 125 if entity @s[distance=..3] if block 205 -55 125 minecraft:stone_button[powered=true] run function rfm:collective/game/swimming_race/finish_player
execute as @a[tag=rfm_participant,scores={room=6,group_finished=0}] positioned 205 -55 119 if entity @s[distance=..3] if block 205 -55 119 minecraft:stone_button[powered=true] run function rfm:collective/game/swimming_race/finish_player
execute as @a[tag=rfm_participant,scores={room=7,group_finished=0}] positioned 205 -55 113 if entity @s[distance=..3] if block 205 -55 113 minecraft:stone_button[powered=true] run function rfm:collective/game/swimming_race/finish_player
execute as @a[tag=rfm_participant,scores={room=8,group_finished=0}] positioned 205 -55 107 if entity @s[distance=..3] if block 205 -55 107 minecraft:stone_button[powered=true] run function rfm:collective/game/swimming_race/finish_player

execute if score #group_state group_state matches 1 unless entity @a[tag=rfm_participant,scores={group_finished=0}] run function rfm:collective/finish
execute if score #group_state group_state matches 1 if score #group_time group_time matches ..0 run function rfm:collective/game/swimming_race/timeout
