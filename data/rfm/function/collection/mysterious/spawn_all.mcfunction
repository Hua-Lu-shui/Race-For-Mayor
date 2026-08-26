#按自动刷新设置处理每位玩家的藏品，并在各自办公室生成一个神秘人
function rfm:collection/mysterious/cleanup
execute as @a[tag=rfm_participant] at @s run function rfm:collection/mysterious/spawn_one
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.811a8cf38203","color":"white"},{"translate":"rfm.text.700c61528502","color":"dark_purple","bold":true},{"translate":"rfm.text.54b630b8e252","color":"white"}]
