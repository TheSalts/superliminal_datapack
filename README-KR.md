# 슈퍼리미널 데이터팩 (Forced Perspective)

이 데이터팩은 Steam 게임 _[Superliminal](https://store.steampowered.com/app/1049410/Superliminal/?l=koreana)_ 의 핵심 메커니즘인 **[Forced Perspective](https://en.wikipedia.org/wiki/Forced_perspective)** 를 구현한 마인크래프트 데이터팩입니다.

## 기술 구현 방식

인위적 원근법 (Forced Perspective)의 기술 구현은 크게 2가지로 나눌 수 있습니다.

***

### 1. 블록 잡기/놓기

블록 디스플레이에 인터랙션을 태운 블록을 소환합니다.

해당 인터랙션을 클릭 시 레이캐스팅이 시작되며, 레이캐스팅을 한 단계씩 진행할 때 마다 블록의 크기를 조정 후 블록이 벽에 닿았는 지 검사합니다.

***

### 2. 블록 크기 조정

플레이어가 인터랙션에 클릭을 할 때, 해당 플레이어와 블록 간의 거리와 블록의 크기를 저장합니다. 이 거리를 $d$, 크기를 $s$라고 하겠습니다.

레이캐스팅 도중 한 단계를 진행하면 블록의 위치가 그만큼 (시점 기준) 뒤쪽으로 조금씩 이동하는데, 이동한 후의 플레이어와 블록의 거리를 저장합니다. 이걸 $d_c$라고 하겠습니다.

블록의 크기를 구하려면 먼저 크기 비율 $r$을 구해야 하는데, 구하는 공식은 다음과 같습니다. 

$$r = \frac{d_c}{d}$$

이제 크기 비율 $r$을 원래 크기 $s$에 곱하면 보정된 블록 크기가 됩니다.

## 쇼케이스

[Youtube](https://youtu.be/0aqticgqvFc?si=7EEKlqR5OXqLKnSs)

## 설치 방법

1. `Code -> Download ZIP` 에서 데이터팩 다운로드
2. 다운받은 파일을 마인크래프트 월드 폴더의 `datapacks` 폴더로 이동
3. 월드를 시작하거나 `/reload`하여 데이터팩 활성화

## 사용 방법

1. `/tag @s add player` \* 멀티 서버의 경우 player 태그는 한 명만 가지고 있어야 합니다.
2. `/function slm:setting/create_block` 명령어로 커스텀 블록을 소환하여 좌클릭으로 움직일 수 있습니다.
3. 커스텀 블록을 없애려면 아무 종류의 검을 들고 블록을 좌클릭하세요.

## 사용된 라이브러리

[gibbsly/gm](https://github.com/gibbsly/gm)

## 제거

```mcfunction
/function slm:uninstall
```

를 사용하고 `datapacks` 폴더에서 데이터팩을 삭제하세요.

## 라이선스

이 프로젝트는 [MIT 라이선스](LICENSE)에 따라 라이선스가 부여됩니다.

## 기여

이슈 & 풀 리퀘스트는 환영입니다.
