# 슈퍼리미널 데이터팩 (Forced Perspective)

이 데이터팩은 Steam 게임 _[Superliminal](https://store.steampowered.com/app/1049410/Superliminal/?l=koreana)_ 의 핵심 메커니즘인 **[Forced Perspective](https://en.wikipedia.org/wiki/Forced_perspective)** 를 구현한 마인크래프트 데이터팩입니다.

## 주요 기능

- **중력 시뮬레이션**: 커스텀 블록에 중력을 적용합니다.
- **Forced Perspective**: 플레이어의 시점과 상호작용에 따라 블록과 엔티티의 크기를 동적으로 조정하여 착시를 연출합니다.
- **히트박스 충돌 감지**: 커스텀 블록의 히트박스를 처리합니다. (AABB)

## 쇼케이스

[Youtube](https://youtu.be/0aqticgqvFc?si=7EEKlqR5OXqLKnSs)

## 설치 방법

1. [Releases](https://github.com/TheSalts/superliminal_datapack/releases)에서 데이터팩 다운로드
2. `SLM` 폴더와 `gm`을 마인크래프트 월드 저장소의 `datapacks` 폴더로 이동
3. 월드를 시작하거나 리로드하여 데이터팩 활성화

## 사용 방법

1. `/tag @s add player` \* 멀티 서버의 경우 player 태그는 한 명만 가지고 있어야 합니다.
2. `/function slm:private/setting/create_block` 명령어로 커스텀 블록을 소환하여 좌클릭으로 움직일 수 있습니다.
3. 커스텀 블록을 없애려면 아무 종류의 검을 들고 블록을 좌클릭하세요.

## 의존성 (릴리스에 포함됨)

[gibbsly/gm](https://github.com/gibbsly/gm)

## 제거

```mcfunction
/function slm:uninstall
```

를 사용하고 `datapacks` 폴더에서 `SLM`과 `gm`을 삭제하세요.

## 라이선스

이 프로젝트는 [MIT 라이선스](LICENSE)에 따라 라이선스가 부여됩니다.

## 기여

이슈 & 풀 리퀘스트는 환영입니다.
