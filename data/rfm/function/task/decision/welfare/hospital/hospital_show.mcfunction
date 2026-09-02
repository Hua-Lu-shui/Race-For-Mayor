scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.4fcdc287ee0a","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.e5bc4c1cadbc","color":"white"}

tellraw @s [{"translate":"rfm.text.4a6feac85b76","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.1b91d53c9e57","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.fc2d7bc1fc92","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
