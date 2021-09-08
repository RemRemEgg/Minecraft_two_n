tp @s ^ ^ ^0.33 ~ ~
scoreboard players remove %c20 tick 1
execute unless block ~ ~ ~ #tn:air run scoreboard players set %c20 tick 0
execute if score %c20 tick matches 1.. at @s run function tn:actions/cast20loop