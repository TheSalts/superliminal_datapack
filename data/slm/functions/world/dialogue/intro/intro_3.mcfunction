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
tellraw @a [{"text":"배경음악은 ","color":"yellow"} , {"text":"음성","color":"aqua"}, {"text":"으로 조절할 수 있습니다","color":"yellow"}]
tellraw @a [{"text":"효과음은 ","color":"yellow"} , {"text":"주크박스/소리 블록","color":"aqua"}, {"text":"으로 조절할 수 있습니다","color":"yellow"}]
tellraw @a [{"text":"목소리/대사는 ","color":"yellow"} , {"text":"음성","color":"aqua"}, {"text":"으로 조절할 수 있습니다","color":"yellow"}]
tellraw @a [{"text":"게임의 몰입감을 위해","color":"yellow"} , {"text":" 3인칭 시점 및 디버그 기능","color":"aqua"}, {"text":"은 사용하지 마시기 바랍니다","color":"yellow"}]
tellraw @a {"text":"\n광과민성 발작 경고","bold":true,"color":"red"}
tellraw @a [{"text":"이 게임은 플래시 라이트, 높은 대비 및 빠른 화면 전환과 같은 시각적 요소를 포함하고 있습니다. 일부 사용자에게는 광과민성 발작이나 어지러움을 유발할 수 있는 요소가 포함되어 있습니다.","color":"red"}]
tellraw @a [{"text":"다음과 같은 증상이 나타날 경우 즉시 게임을 중단하고 의료기관을 찾아가십시오: 시력 장애, 눈이 부시거나 흔들림, 얼굴에서 땀이 나거나 토하게 됨, 체온이 상승하거나 심장 박동이 빠르게 진행됨, 불안감, 혼란, 불면증 등. 광과민성 발작은 경고 없이 발생할 수 있으므로, 반드시 안전한 환경에서 게임을 즐기십시오.\n","color":"red"}]
tellraw @a {"text":"[ 다음 ]\n","color":"dark_green","clickEvent":{"action":"run_command","value":"/function slm:world/dialogue/intro/intro_4"}}