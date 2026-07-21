#创建最终结算流程与票数计分板
scoreboard objectives add settle_state dummy
scoreboard objectives add settle_ready dummy
scoreboard objectives add settle_clock minecraft.dropped:minecraft.clock
scoreboard objectives add settle_room dummy
scoreboard objectives add settle_value dummy
scoreboard objectives add vote_fame dummy
scoreboard objectives add vote_economy dummy
scoreboard objectives add vote_welfare dummy
scoreboard objectives add vote_ecology dummy
scoreboard objectives add title_bonus dummy
scoreboard objectives add vote_total dummy
scoreboard objectives add final_votes dummy {"text":"✦ 最终票数 ✦","color":"gold","bold":true}
scoreboard objectives modify final_votes numberformat styled {"color":"gold","bold":true}
