#say Running new trader routine

# Setup for random number generator
function st:rand/rand_init

# Run each type of special trade function (basic_trades needs to be run 5 times)
function st:trades/cocoa_beans
function st:trades/trade_6
function st:trades/basic_trades_init
function st:trades/basic_trades_init
function st:trades/basic_trades_init
function st:trades/basic_trades_init
function st:trades/basic_trades_init

# Add the st_complete tag and kill RNG entities
tag @e[type=wandering_trader,tag=!st_complete] add st_complete
kill @e[tag=st_rand]