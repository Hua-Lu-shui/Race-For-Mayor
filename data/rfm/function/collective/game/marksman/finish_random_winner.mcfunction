execute as @a[tag=rfm_participant] if score @s group_score = #elimination group_score run tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"gold","bold":true},{"translate":"rfm.collective.marksman.winner","color":"gold","bold":true}]
playsound minecraft:ui.toast.challenge_complete master @a[tag=rfm_participant] ~ ~ ~ 1 1 1
function rfm:collective/finish
