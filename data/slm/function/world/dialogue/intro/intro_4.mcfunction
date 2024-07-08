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
tellraw @a [{"text":"위 주의 사항을 모두 확인했으며, ","color":"yellow"}, {"text":"FantasyFrame 클로즈드 베타 테스트","color":"gold"}, {"text":" 참여에 동의하신다면 아래에 ","color": "yellow"}, {"text":"서명","color":"aqua"}, {"text":"하시면 계정에 로그인 권한이 부여됩니다.","color":"yellow"}]
tellraw @a {"text": "\n[ 저작권 ]","color": "green","hoverEvent": {"action": "show_text","value": [{"text": "본 맵에 사용된 모든 배경 음악에는 YouTube 오디오 보관함 라이선스가 적용됩니다.\n수익 창출이 가능하며, 문제가 될 수 있다고 판단될 경우 배경음악을 끄고 플레이하십시오.\n "},{"text": "\nYouTube 오디오 보관함 라이선스\n","color": "green","bold": true},{"bold": false,"color": "white","text": "수익 창출 동영상을 포함한 모든 동영상에서 이 오디오 트랙을 사용할 수 있습니다. 저작자 표시는 필수 항목이 아닙니다.\nYouTube에서 아티스트를 출처로 밝히고 동영상에 오디오 보관함에 대한 링크를 표시할 수 있습니다.\n보관함의 음악 파일이 포함되어 있는 동영상 및 기타 콘텐츠와 별도로 해당 음악 파일을 제공, 배포 또는 연주할 수 없습니다. 예를 들어 보관함 음악 파일의 독립적인 배포는 허용되지 않습니다."}]}}
tellraw @a {"text":"\n[ 서명 ]\n","color":"dark_green","clickEvent":{"action":"run_command","value":"/function slm:world/dialogue/intro/intro_5"}}