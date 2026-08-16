tellraw @a {"text":"—— 命中注定最终排名 ——","color":"gold","bold":true}
execute as @a[scores={group_rank=1}] run tellraw @a [{"text":"第1名  ","color":"gray"},{"selector":"@s","color":"white"}]
execute as @a[scores={group_rank=2}] run tellraw @a [{"text":"第2名  ","color":"gray"},{"selector":"@s","color":"white"}]
execute as @a[scores={group_rank=3}] run tellraw @a [{"text":"第3名  ","color":"gray"},{"selector":"@s","color":"white"}]
execute as @a[scores={group_rank=4}] run tellraw @a [{"text":"第4名  ","color":"gray"},{"selector":"@s","color":"white"}]
execute as @a[scores={group_rank=5}] run tellraw @a [{"text":"第5名  ","color":"gray"},{"selector":"@s","color":"white"}]
execute as @a[scores={group_rank=6}] run tellraw @a [{"text":"第6名  ","color":"gray"},{"selector":"@s","color":"white"}]
execute as @a[scores={group_rank=7}] run tellraw @a [{"text":"第7名  ","color":"gray"},{"selector":"@s","color":"white"}]
execute as @a[scores={group_rank=8}] run tellraw @a [{"text":"第8名  ","color":"gray"},{"selector":"@s","color":"white"}]
