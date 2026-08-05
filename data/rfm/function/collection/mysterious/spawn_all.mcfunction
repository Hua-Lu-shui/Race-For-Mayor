#为每位玩家独立抽取报价，并在各自办公室生成一个神秘人
function rfm:collection/mysterious/cleanup
execute as @a at @s run function rfm:collection/mysterious/spawn_one
tellraw @a [{"text":"属性公示结束后，你的办公室里出现了一位","color":"white"},{"text":"神秘人","color":"dark_purple","bold":true},{"text":"。他会停留到下一回合开始。","color":"white"}]
