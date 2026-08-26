#显示游戏名称与抽签规则
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title [{"translate":"rfm.text.419f291a6047","color":"#C6A8FF","bold":true},{"translate":"rfm.text.d3a3069580c2","color":"gold","bold":true}]
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.7320b9c10194","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.2d703985ac61","color":"#C6A8FF","bold":true},{"translate":"rfm.text.6afd443ee77c","color":"gold","bold":true}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.bdd9d6550396","color":"#67D5FF","bold":true},{"translate":"rfm.text.4618a52e30f6","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.c53d252ed6b5","color":"#FFD166","bold":true},{"translate":"rfm.text.dda6fc941817","color":"white"},{"translate":"rfm.text.41caa243f759","color":"#C6A8FF"},{"translate":"rfm.text.a789285b8019","color":"white"}]
item replace entity @a[tag=rfm_participant] hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.604df5358eaa","color":"#C6A8FF","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.ff37494c647e","color":"gray","italic":false}'],minecraft:custom_data={collective_start_ready:1}] 1
