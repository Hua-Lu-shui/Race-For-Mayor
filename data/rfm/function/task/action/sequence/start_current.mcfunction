scoreboard players set #current_found action_order 0
execute as @a[tag=rfm_participant] if score @s action_order = #current_action action_order if score @s action_role matches 1 run scoreboard players set #current_found action_order 1

execute as @a[tag=rfm_participant] if score @s action_order = #current_action action_order if score @s action_role matches 1 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b64ef488cd0f","color":"white"},{"translate":"rfm.text.f41a0d359677","color":"#67D5FF","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.b053771f823d","color":"white"}]

execute as @a[tag=rfm_participant] if score @s action_order = #current_action action_order if score @s action_role matches 1 if score @s action_task matches 1.. run function rfm:task/action/show_selected

execute as @a[tag=rfm_participant] if score @s action_order = #current_action action_order if score @s action_role matches 1 if score @s action_task matches 0 run function rfm:task/action/sequence/skip_current

execute if score #current_found action_order matches 0 run function rfm:task/action/sequence/skip_current
