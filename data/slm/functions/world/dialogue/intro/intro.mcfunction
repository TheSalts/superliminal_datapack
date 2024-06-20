execute as @a at @s run playsound minecraft:ui.button.click record @s
tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @a [{"text":"축하합니다 ","color":"yellow"}, {"selector":"@a[tag=player]","color":"green"}, {"text":"님!","color":"yellow"}]
tellraw @a [{"text":"귀하께서 ","color":"yellow"}, {"text":"FantasyFrame 클로즈드 베타 테스트","color":"gold"}, {"text":"에 당첨되신 것을 축하드립니다!\n","color": "yellow"}]
tellraw @a [{"text":"저희 ","color":"yellow"} ,{"text":"Salt Studio","color":"gold"}, {"text":"에서는 참가자분들의 원활한 플레이를 위해 다음과 같은 환경에서 플레이할 것을 권장합니다.\n\n","color":"yellow"}]
tellraw @a [{"text":"렌더 거리","color":"aqua"} , {"text":": ","color":"white"}, {"text":"12+","color":"green"}]
tellraw @a [{"text":"시뮬레이션 거리","color":"aqua"} , {"text":": ","color":"white"}, {"text":"16+","color":"green"}]
tellraw @a [{"text":"GUI 비율","color":"aqua"} , {"text":": ","color":"white"}, {"text":"2x (Sodium 기준)","color":"green"}]
tellraw @a [{"text":"그래픽","color":"aqua"} , {"text":": ","color":"white"}, {"text":"화려하게","color":"green"}]
tellraw @a [{"text":"쉐이더","color":"aqua"} , {"text":": ","color":"white"}, {"text":"켜기\n","color":"green"}]
tellraw @a [{"text":"시야 범위","color":"aqua"} , {"text":": ","color":"white"}, {"text":"90 이하\n","color":"green"}]
tellraw @a {"text":"[ 다음 ]\n","color":"dark_green","clickEvent":{"action":"run_command","value":"/function slm:world/dialogue/intro/intro_2"}}