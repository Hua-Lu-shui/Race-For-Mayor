#结束当前议题，防止同一tick重复结算
scoreboard players set #group_state group_state 2
tp @a 1100 -59 100 0 0
execute if score #group_prompt group_prompt matches ..7 run schedule function rfm:collective/new_prompt 40t replace
execute if score #group_prompt group_prompt matches 8.. run schedule function rfm:collective/finish 40t replace
