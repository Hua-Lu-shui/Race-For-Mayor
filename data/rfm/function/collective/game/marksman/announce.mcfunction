title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title [{"translate":"rfm.text.419f291a6047","color":"#C6A8FF","bold":true},{"translate":"rfm.collective.marksman.name","color":"yellow","bold":true}]
title @a[tag=rfm_participant] subtitle {"translate":"rfm.collective.marksman.subtitle","color":"white"}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.2d703985ac61","color":"#C6A8FF","bold":true},{"translate":"rfm.collective.marksman.name","color":"yellow","bold":true}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.collective.marksman.rule_one","color":"#67D5FF","bold":true},{"translate":"rfm.collective.marksman.rule_one_detail","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.collective.marksman.rule_two","color":"#FFD166","bold":true},{"translate":"rfm.collective.marksman.rule_two_detail","color":"white"}]
item replace entity @a[tag=rfm_participant] hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.604df5358eaa","color":"#C6A8FF","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.collective.marksman.ready_lore","color":"gray","italic":false}'],minecraft:custom_data={collective_start_ready:1}] 1
