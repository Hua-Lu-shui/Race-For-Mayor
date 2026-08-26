execute as @a[tag=rfm_participant,scores={group_finished=0},limit=1] run tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"gold","bold":true},{"translate":"rfm.text.6c598543328f","color":"gold","bold":true}]
scoreboard players add #elimination group_score 1
scoreboard players operation @a[tag=rfm_participant,scores={group_finished=0},limit=1] group_score = #elimination group_score
scoreboard players set @a[tag=rfm_participant,scores={group_finished=0},limit=1] group_finished 1
playsound minecraft:ui.toast.challenge_complete master @a[tag=rfm_participant] ~ ~ ~ 1 1 1
function rfm:collective/finish
