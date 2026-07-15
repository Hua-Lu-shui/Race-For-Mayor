execute store result score @s audit_book_c run random value 1..6
execute if score @s audit_book_c = @s audit_book_a run function rfm:task/action/economy/economy_3/reroll_c
execute if score @s audit_book_c = @s audit_book_b run function rfm:task/action/economy/economy_3/reroll_c
