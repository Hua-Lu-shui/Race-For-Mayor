#只说明游戏名称与规则，不说明背景
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.7c5820266a97","color":"light_purple","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.2d703985ac61","color":"#C6A8FF","bold":true},{"translate":"rfm.text.7c5820266a97","color":"light_purple","bold":true}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.bdd9d6550396","color":"#67D5FF","bold":true},{"translate":"rfm.text.b7ef98248f55","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.c53d252ed6b5","color":"#FFD166","bold":true},{"translate":"rfm.text.94cf76f30a0b","color":"white"},{"translate":"rfm.text.41caa243f759","color":"#C6A8FF"},{"translate":"rfm.text.a789285b8019","color":"white"}]
item replace entity @a[tag=rfm_participant] hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.604df5358eaa","color":"#C6A8FF","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.41713ff56522","color":"gray","italic":false}'],minecraft:custom_data={collective_start_ready:1}] 1
