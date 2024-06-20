execute if block ~ ~ ~ lightning_rod[facing=east] positioned ~1 ~ ~ unless score $pos obPos matches 2 run function slm:world/process/ch2/work
execute if block ~ ~ ~ lightning_rod[facing=west] positioned ~-1 ~ ~ unless score $pos obPos matches 1 run function slm:world/process/ch2/work
execute if block ~ ~ ~ lightning_rod[facing=south] positioned ~ ~ ~1 unless score $pos obPos matches 4 run function slm:world/process/ch2/work
execute if block ~ ~ ~ lightning_rod[facing=north] positioned ~ ~ ~-1 unless score $pos obPos matches 3 run function slm:world/process/ch2/work
execute if block ~ ~ ~ lightning_rod[facing=up] positioned ~ ~1 ~ unless score $pos obPos matches 6 run function slm:world/process/ch2/work
execute if block ~ ~ ~ lightning_rod[facing=down] positioned ~ ~-1 ~ unless score $pos obPos matches 5 run function slm:world/process/ch2/work