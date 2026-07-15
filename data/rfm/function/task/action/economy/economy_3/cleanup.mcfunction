bossbar set rfm:audit_time visible false
clear @s minecraft:map[minecraft:custom_data={audit_ready:1}]
clear @s minecraft:written_book[minecraft:custom_data~{rfm_audit_book:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{audit_ready:1}}}}]
advancement revoke @s only rfm:audit_pickup_a
advancement revoke @s only rfm:audit_pickup_b
advancement revoke @s only rfm:audit_pickup_c

scoreboard players set @s audit_target 0
scoreboard players set @s audit_book_a 0
scoreboard players set @s audit_book_b 0
scoreboard players set @s audit_book_c 0
scoreboard players set @s audit_answer 0
scoreboard players set @s audit_correct 0
scoreboard players set @s audit_time 0
scoreboard players set @s audit_delay 0
scoreboard players set @s audit_state 0
function rfm:task/action/sequence/complete_current
