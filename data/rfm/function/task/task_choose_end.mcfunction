bossbar set rfm:choose_time visible false
title @a[tag=rfm_participant] title {"translate":"rfm.text.54edcd967af3","color":"light_purple","bold":true}
title @a[tag=rfm_participant] subtitle {"translate":"rfm.text.d218d8065cd6","color":"white"}
scoreboard players set @a[tag=rfm_participant] decision_task 0
scoreboard players set @a[tag=rfm_participant] decision_choice 0
scoreboard players set @a[tag=rfm_participant] attribute_choice 0
scoreboard players set @a[tag=rfm_participant] action_attribute_choice 0
function rfm:task/action/sequence/start
