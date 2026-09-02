scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.87900d5f1b4a","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.db66b8048bdf","color":"white"}
tellraw @s [{"translate":"rfm.text.2472b09ed55b","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.c184e7efecec","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.d018b6377a8e","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
