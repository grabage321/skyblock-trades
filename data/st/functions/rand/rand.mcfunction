# Reset scores for the randomizing
scoreboard players set @e[tag=st_rand_1] st_rand 1
scoreboard players reset @e[tag=st_rand_2] st_rand
scoreboard players reset @e[tag=st_rand_3] st_rand

# Assign a random number to st_rand_2
execute at @e[limit=1,tag=st_rand_1] as @e[tag=st_rand_counter] as @e[tag=st_rand_counter] as @e[tag=st_rand_counter] as @e[tag=st_rand_counter] as @e[tag=st_rand_counter,sort=furthest] at @s run scoreboard players operation @e[type=armor_stand,distance=..1,sort=random,limit=1] st_rand += @e[tag=st_rand_1,scores={st_rand=1..32768}] st_rand

# Divide st_rand_1's score st_rand (should be 65536) by the assigned max, then divide the randomly generated number by this value
scoreboard players operation @e[tag=st_rand_1] st_rand /= @e[tag=st_rand_1] st_rand_max
scoreboard players operation @e[tag=st_rand_2] st_rand /= @e[tag=st_rand_1] st_rand