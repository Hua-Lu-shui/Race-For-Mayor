scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.9fe780489dc6","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.14978cc48a86","color":"white"}

tellraw @s [{"translate":"rfm.text.22ec2d1a8928","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.470a82c478b3","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.5ffef7e298d0","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
