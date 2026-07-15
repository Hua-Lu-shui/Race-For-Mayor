execute if score @s audit_book_a matches 1 if score @s audit_target matches 1 run function rfm:task/action/economy/economy_3/books/a_false {slot:"A",slot_id:1}
execute if score @s audit_book_a matches 1 unless score @s audit_target matches 1 run function rfm:task/action/economy/economy_3/books/a_true {slot:"A",slot_id:1}
execute if score @s audit_book_a matches 2 if score @s audit_target matches 1 run function rfm:task/action/economy/economy_3/books/b_false {slot:"A",slot_id:1}
execute if score @s audit_book_a matches 2 unless score @s audit_target matches 1 run function rfm:task/action/economy/economy_3/books/b_true {slot:"A",slot_id:1}
execute if score @s audit_book_a matches 3 if score @s audit_target matches 1 run function rfm:task/action/economy/economy_3/books/c_false {slot:"A",slot_id:1}
execute if score @s audit_book_a matches 3 unless score @s audit_target matches 1 run function rfm:task/action/economy/economy_3/books/c_true {slot:"A",slot_id:1}
execute if score @s audit_book_a matches 4 if score @s audit_target matches 1 run function rfm:task/action/economy/economy_3/books/d_false {slot:"A",slot_id:1}
execute if score @s audit_book_a matches 4 unless score @s audit_target matches 1 run function rfm:task/action/economy/economy_3/books/d_true {slot:"A",slot_id:1}
execute if score @s audit_book_a matches 5 if score @s audit_target matches 1 run function rfm:task/action/economy/economy_3/books/e_false {slot:"A",slot_id:1}
execute if score @s audit_book_a matches 5 unless score @s audit_target matches 1 run function rfm:task/action/economy/economy_3/books/e_true {slot:"A",slot_id:1}
execute if score @s audit_book_a matches 6 if score @s audit_target matches 1 run function rfm:task/action/economy/economy_3/books/f_false {slot:"A",slot_id:1}
execute if score @s audit_book_a matches 6 unless score @s audit_target matches 1 run function rfm:task/action/economy/economy_3/books/f_true {slot:"A",slot_id:1}
kill @e[type=minecraft:item_display,tag=rfm_audit_model_a]
kill @e[type=minecraft:interaction,tag=rfm_audit_book_a]
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
tellraw @s {"text":"已拾取A号账本，选中后右键翻阅。","color":"yellow"}
