tellraw @s {"text":"【经济决策】工厂升级补贴","color":"gold","bold":true}
tellraw @s {"text":"几家传统工厂表示设备老旧，若没有补贴可能裁员。升级能保住产能，但补贴标准会引发争议。","color":"white"}
tellraw @s [{"text":"[激进] 大规模设备补贴","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/factory_upgrade/factory_upgrade_a"}}]
tellraw @s [{"text":"[折中] 只补贴节能设备","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/factory_upgrade/factory_upgrade_b"}}]
tellraw @s [{"text":"[保守] 不补贴只减税","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/factory_upgrade/factory_upgrade_c"}}]
