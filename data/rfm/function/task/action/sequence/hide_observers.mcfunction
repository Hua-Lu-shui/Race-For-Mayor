effect clear @a[tag=rfm_action_observer_hidden] minecraft:invisibility
tag @a[tag=rfm_action_observer_hidden] remove rfm_action_observer_hidden
tag @s add rfm_action_current
tag @a[tag=rfm_participant,tag=!rfm_action_current] add rfm_action_observer_hidden
effect give @a[tag=rfm_action_observer_hidden] minecraft:invisibility infinite 0 true
tag @s remove rfm_action_current
