effect clear @a[tag=rfm_participant,scores={group_finished=0}] minecraft:levitation
scoreboard players set @a[tag=rfm_participant,scores={group_finished=0}] group_score 0
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.cab8060e8df2","color":"yellow"}
function rfm:collective/finish
