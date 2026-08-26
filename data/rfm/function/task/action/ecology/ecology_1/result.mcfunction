#停止任务，按照10次判断的正确次数结算；只影响生态属性
scoreboard players set @s emission_state 3

#10次正确：完美完成，生态+16
execute if score @s emission_correct matches 10 run scoreboard players add @s ecology 16
execute if score @s emission_correct matches 10 run function rfm:ability/military/perfect
execute if score @s emission_correct matches 10 run title @s title {"translate":"rfm.text.883bf07ab609","color":"gold","bold":true}
execute if score @s emission_correct matches 10 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.3aa2c3579385","color":"green","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.3ded416eab03","color":"green"}]

#6至9次正确：完成，生态+10
execute if score @s emission_correct matches 6..9 run scoreboard players add @s ecology 10
execute if score @s emission_correct matches 6..9 run title @s title {"translate":"rfm.text.33246f6a5e5b","color":"green","bold":true}
execute if score @s emission_correct matches 6..9 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.3aa2c3579385","color":"green","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.2235270e63d9","color":"green"}]

#0至5次正确：失败，生态+4
execute if score @s emission_correct matches ..5 run title @s title {"translate":"rfm.text.3e3c8068bb0e","color":"red","bold":true}
execute if score @s emission_correct matches ..5 run scoreboard players add @s ecology 4
execute if score @s emission_correct matches ..5 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.3aa2c3579385","color":"green","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.556e8167f87f","color":"green"}]

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.e87bc6dcb8c0","color":"white"},{"selector":"@s","color":"white"},{"translate":"rfm.text.259dbabe6dca","color":"white"},{"score":{"name":"@s","objective":"emission_correct"},"color":"green"},{"translate":"rfm.text.846df2a74c8e","color":"white"}]
function rfm:attribute/minimum
function rfm:task/action/ecology/ecology_1/cleanup
