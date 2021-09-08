kill @e[tag=arrowas]
summon armor_stand ~ ~ ~ {Tags:["arrowas"],NoGravity:1b}
tp @e[tag=arrowas] ~ ~ ~ ~ ~
scoreboard players set @e[tag=arrowas] rmm 24
execute as @e[tag=arrowas] at @s run function tn:actions/rmm
execute as @e[tag=arrowas] at @s run summon arrow ~ ~ ~ {Tags:["arrowo","shotarrow","spawned"],pickup:2b}
execute as @e[tag=arrowo] at @s run data modify entity @s Motion set from entity @e[tag=arrowas,limit=1,sort=nearest] Motion
tag @e[tag=arrowo] remove arrowo
kill @e[tag=arrowas]