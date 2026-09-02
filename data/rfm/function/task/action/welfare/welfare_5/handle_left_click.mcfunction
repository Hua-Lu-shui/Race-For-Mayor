data remove entity @s attack
execute as @a[tag=rfm_participant,scores={action_task=805,cooking_state=1},sort=nearest,limit=1,distance=..6] run function rfm:task/action/welfare/welfare_5/register_click
