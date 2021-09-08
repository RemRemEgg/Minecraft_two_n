execute store result score x rmm run data get entity @s Pos[0] 500
execute store result score y rmm run data get entity @s Pos[1] 500
execute store result score z rmm run data get entity @s Pos[2] 500
tp @s ^ ^ ^.1
execute store result score x2 rmm run data get entity @s Pos[0] 500
execute store result score y2 rmm run data get entity @s Pos[1] 500
execute store result score z2 rmm run data get entity @s Pos[2] 500
tp @s ~ ~ ~
scoreboard players operation x2 rmm -= x rmm
scoreboard players operation y2 rmm -= y rmm
scoreboard players operation z2 rmm -= z rmm
scoreboard players operation x2 rmm *= @s rmm
scoreboard players operation y2 rmm *= @s rmm
scoreboard players operation z2 rmm *= @s rmm
execute store result entity @s Motion[0] double .001 run scoreboard players get x2 rmm
execute store result entity @s Motion[1] double .001 run scoreboard players get y2 rmm
execute store result entity @s Motion[2] double .001 run scoreboard players get z2 rmm
scoreboard players reset @s rmm