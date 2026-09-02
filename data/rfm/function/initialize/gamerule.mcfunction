gamemode adventure @a
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule sendCommandFeedback false
gamerule doMobSpawning false
gamerule randomTickSpeed 0
effect give @a minecraft:resistance infinite 4 true
effect give @a minecraft:saturation infinite 0 true
execute as @e[type=minecraft:item_frame] run data merge entity @s {Fixed:1b}
execute as @e[type=minecraft:glow_item_frame] run data merge entity @s {Fixed:1b}
execute as @e[type=minecraft:painting] run data merge entity @s {Invulnerable:1b}
