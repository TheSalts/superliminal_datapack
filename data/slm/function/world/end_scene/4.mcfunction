tag @a remove end_screen_1
tp @a -1 -44 16 -90 0
gamemode adventure @a
tellraw @a ["",{"text":"LUCID","color":"green"}, {"text":"를 플레이해주셔서 감사합니다!"}]
tellraw @a ["",{"text":"엔딩룸","color":"gold"}, {"text":" 및 "}, {"text":"이어하기", "color":"gold"}, {"text":"가 해금되었습니다"}]
fill 4 -44 26 4 -43 26 air strict
fill -3 -44 16 -3 -43 16 air strict
function slm:world/init/inits/3
function slm:world/init/inits/2
function slm:world/init/inits/1
