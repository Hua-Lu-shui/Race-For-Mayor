execute if score #selected_game group_game matches 1 run function rfm:collective/game/swimming_race/show_ranking
execute if score #selected_game group_game matches 2 run function rfm:collective/game/needle_gap/show_ranking
execute if score #selected_game group_game matches 3 run function rfm:collective/game/fated_draw/show_ranking
schedule function rfm:item/select/begin 100t replace
