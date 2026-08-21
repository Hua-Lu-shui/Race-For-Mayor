#为每位玩家独立抽取藏品，并在各自办公室生成一个神秘人
function rfm:collection/mysterious/cleanup
execute as @a[tag=rfm_participant] at @s run function rfm:collection/mysterious/spawn_one
tellraw @a[tag=rfm_participant] [{"text":"你的办公室里出现了一位","color":"white"},{"text":"神秘人","color":"dark_purple","bold":true},{"text":"。他会停留一段时间。","color":"white"}]
