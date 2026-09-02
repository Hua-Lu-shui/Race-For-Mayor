scoreboard players add #current_action action_order 1

execute if entity @a[tag=rfm_participant,scores={action_order=2}] if score #current_action action_order matches 2 run function rfm:task/action/sequence/start_current

execute unless entity @a[tag=rfm_participant,scores={action_order=2}] if score #current_action action_order matches 2 run function rfm:task/action/sequence/finish
execute if score #current_action action_order matches 3.. run function rfm:task/action/sequence/finish
