#把经济行动任务3的账本B交给玩家并更新场景
execute if score @s audit_book_b matches 1 if score @s audit_target matches 2 run function rfm:task/action/economy/economy_3/books/a_false {slot:"B",slot_id:2}
execute if score @s audit_book_b matches 1 unless score @s audit_target matches 2 run function rfm:task/action/economy/economy_3/books/a_true {slot:"B",slot_id:2}
execute if score @s audit_book_b matches 2 if score @s audit_target matches 2 run function rfm:task/action/economy/economy_3/books/b_false {slot:"B",slot_id:2}
execute if score @s audit_book_b matches 2 unless score @s audit_target matches 2 run function rfm:task/action/economy/economy_3/books/b_true {slot:"B",slot_id:2}
execute if score @s audit_book_b matches 3 if score @s audit_target matches 2 run function rfm:task/action/economy/economy_3/books/c_false {slot:"B",slot_id:2}
execute if score @s audit_book_b matches 3 unless score @s audit_target matches 2 run function rfm:task/action/economy/economy_3/books/c_true {slot:"B",slot_id:2}
execute if score @s audit_book_b matches 4 if score @s audit_target matches 2 run function rfm:task/action/economy/economy_3/books/d_false {slot:"B",slot_id:2}
execute if score @s audit_book_b matches 4 unless score @s audit_target matches 2 run function rfm:task/action/economy/economy_3/books/d_true {slot:"B",slot_id:2}
execute if score @s audit_book_b matches 5 if score @s audit_target matches 2 run function rfm:task/action/economy/economy_3/books/e_false {slot:"B",slot_id:2}
execute if score @s audit_book_b matches 5 unless score @s audit_target matches 2 run function rfm:task/action/economy/economy_3/books/e_true {slot:"B",slot_id:2}
execute if score @s audit_book_b matches 6 if score @s audit_target matches 2 run function rfm:task/action/economy/economy_3/books/f_false {slot:"B",slot_id:2}
execute if score @s audit_book_b matches 6 unless score @s audit_target matches 2 run function rfm:task/action/economy/economy_3/books/f_true {slot:"B",slot_id:2}
kill @e[type=minecraft:item_display,tag=rfm_audit_model_b]
kill @e[type=minecraft:interaction,tag=rfm_audit_book_b]
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
