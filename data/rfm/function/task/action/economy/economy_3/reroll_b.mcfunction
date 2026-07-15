execute store result score @s audit_book_b run random value 1..6
execute if score @s audit_book_b = @s audit_book_a run function rfm:task/action/economy/economy_3/reroll_b
