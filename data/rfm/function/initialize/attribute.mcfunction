scoreboard objectives add fame dummy {"translate":"rfm.text.dc04a5799df2"}
scoreboard objectives add economy dummy {"translate":"rfm.text.cd0bf6887da7"}
scoreboard objectives add welfare dummy {"translate":"rfm.text.318edbd5be8f"}
scoreboard objectives add ecology dummy {"translate":"rfm.text.014a015ae588"}
scoreboard objectives add ability_fame dummy
scoreboard objectives add ability_economy dummy
scoreboard objectives add ability_welfare dummy
scoreboard objectives add ability_ecology dummy
scoreboard objectives add ability_min dummy
scoreboard objectives add ability_max dummy
scoreboard objectives add ability_trigger dummy
scoreboard objectives add fame_lock dummy
scoreboard objectives add economy_lock dummy
scoreboard objectives add welfare_lock dummy
scoreboard objectives add ecology_lock dummy
scoreboard objectives add fame_locked dummy
scoreboard objectives add economy_locked dummy
scoreboard objectives add welfare_locked dummy
scoreboard objectives add ecology_locked dummy
scoreboard objectives add fame_show dummy
scoreboard objectives add econ_show dummy
scoreboard objectives add welfare_show dummy
scoreboard objectives add eco_show dummy
scoreboard objectives add fame_weight dummy {"translate":"rfm.text.c993caee15bb"}
scoreboard objectives add economy_weight dummy {"translate":"rfm.text.116fe2d1ff6d"}
scoreboard objectives add welfare_weight dummy {"translate":"rfm.text.4b5059491fe7"}
scoreboard objectives add ecology_weight dummy {"translate":"rfm.text.b93124d17289"}
scoreboard objectives add weight_display dummy
scoreboard objectives modify weight_display displayname {"translate":"rfm.text.bec365631ddf","color":"gold","bold":true}
scoreboard objectives modify weight_display numberformat styled {"color":"white","bold":true}
scoreboard players display name 名誉 weight_display {"translate":"rfm.text.dc04a5799df2"}
scoreboard players display name 经济 weight_display {"translate":"rfm.text.cd0bf6887da7"}
scoreboard players display name 民生 weight_display {"translate":"rfm.text.318edbd5be8f"}
scoreboard players display name 生态 weight_display {"translate":"rfm.text.014a015ae588"}
team add weight_fame
team modify weight_fame color aqua
team modify weight_fame prefix {"text":"◆ ","color":"aqua"}
team join weight_fame 名誉
team add weight_economy
team modify weight_economy color yellow
team modify weight_economy prefix {"text":"◆ ","color":"yellow"}
team join weight_economy 经济
team add weight_welfare
team modify weight_welfare color red
team modify weight_welfare prefix {"text":"◆ ","color":"red"}
team join weight_welfare 民生
team add weight_ecology
team modify weight_ecology color green
team modify weight_ecology prefix {"text":"◆ ","color":"green"}
team join weight_ecology 生态
scoreboard objectives add candidate dummy
team add star
team modify star prefix {"translate":"rfm.text.0330c09c19a8","color":"aqua"}
team add business
team modify business prefix {"translate":"rfm.text.a98b0b0206f9","color":"yellow"}
team add community
team modify community prefix {"translate":"rfm.text.3ce765dd14cb","color":"red"}
team add scholar
team modify scholar prefix {"translate":"rfm.text.b42a348fe88f","color":"green"}
team add official
team modify official prefix {"translate":"rfm.text.d362a8ca0fea","color":"#F5F5DC"}
team add military
team modify military prefix {"translate":"rfm.text.26ec5bd5faf5","color":"#FFA500"}
team add lawyer
team modify lawyer prefix {"translate":"rfm.text.c922cac22796","color":"light_purple"}
team add doctor
team modify doctor prefix {"translate":"rfm.text.d9a1a94853e4","color":"#012696"}
