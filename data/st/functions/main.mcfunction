# Run new_trader if a new wandering trader appears
execute if entity @e[type=wandering_trader,tag=!st_complete] run function st:new_trader