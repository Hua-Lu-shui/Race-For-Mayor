tellraw @a[tag=rfm_participant] [{"text":"[传花诊断] 判定框收到左键：","color":"aqua"},{"nbt":"Tags","entity":"@s"}]
execute on attacker run tellraw @a[tag=rfm_participant] [{"text":"[传花诊断] 点击者：","color":"aqua"},{"selector":"@s"},{"text":"；主手："},{"nbt":"SelectedItem","entity":"@s"},{"text":"；标签："},{"nbt":"Tags","entity":"@s"}]

