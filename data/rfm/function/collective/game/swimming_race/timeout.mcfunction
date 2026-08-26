scoreboard players set @a[tag=rfm_participant,scores={group_finished=0}] group_score 0
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.fb9e08644e3f","color":"yellow"}
function rfm:collective/finish
