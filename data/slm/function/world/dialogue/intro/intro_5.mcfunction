execute as @a at @s run playsound minecraft:ui.cartography_table.take_result record @s
tellraw @a {"text":"\n\n\n\n幗\n\n"}
schedule function slm:world/process/tutorial/tutorial 20