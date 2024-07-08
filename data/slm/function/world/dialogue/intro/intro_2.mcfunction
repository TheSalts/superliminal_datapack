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
tellraw @a [{"text":"음악","color":"aqua"} , {"text":": ","color":"white"}, {"text":"꺼짐","color":"green"}]
tellraw @a [{"text":"분위기/환경","color":"aqua"} , {"text":": ","color":"white"}, {"text":"꺼짐","color":"green"}]
tellraw @a [{"text":"배경음악은 ","color":"yellow"} , {"text":"주크박스/소리 블록","color":"aqua"}, {"text":"으로 조절할 수 있습니다","color":"yellow"}]
tellraw @a [{"text":"효과음은 ","color":"yellow"} , {"text":"친화적 생명체","color":"aqua"}, {"text":"으로 조절할 수 있습니다","color":"yellow"}]
tellraw @a [{"text":"목소리/대사는 ","color":"yellow"} , {"text":"음성","color":"aqua"}, {"text":"으로 조절할 수 있습니다","color":"yellow"}]
tellraw @a [{"text":"게임의 몰입감을 위해","color":"yellow"} , {"text":" 3인칭 시점 및 디버그 기능","color":"aqua"}, {"text":"은 사용하지 마시기 바랍니다","color":"yellow"}]
tellraw @a {"text":"\n[ 다음 ]\n","color":"dark_green","clickEvent":{"action":"run_command","value":"/function slm:world/dialogue/intro/intro_3"}}