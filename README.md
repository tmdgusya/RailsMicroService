# Rails MicroService

레일즈로 해보는 MicroService 튜토리얼, 일단 간단하게 유저 도메인과 예약 도메인만 나누어 진행해봅니다.

간단한 기능 명세는 아래와 같습니다.

## 유저

- 유저는 이메일과 비밀번호를 가지고 있습니다.
- 유저는 회원가입과 로그인이 가능합니다.
- 유저는 영화를 예약할 수 있습니다.
- 유저는 자신이 예약한 영화정보를 확인할 수 있습니다.

## 영화 서비스

- 현재 상영화는 영화를 보여줍니다.
- 영화를 예약시켜줍니다.
- 영화비를 계산해 줍니다. (다양한 할인정책이 있을 수 있습니다.)
- 현재 예약 가능한지를 알려줍니다.

## 데이터베이스

```sql=
create database user_service;

create database movie_service;
```

- 위와 같이 데이터베이스도 분리하는 구조로 진행합니다.

## 연동할 방법?

현재는 Resque 를 이용하여 Redis 의 Pub / Sub 구조를 이용하여 이벤트 리스닝 구조를 통해서 진행해볼 예정입니다.
향후 변경될 수 있습니다.

## TODO

[ ] 회원가입
[ ] 로그인
[ ] 영화 예약
[ ] 예약 정보 확인

[ ] 상영하는 영화 보여주기
[ ] 영화 예약 기능

## 기술 Stack

- Ruby(3.0.2), Rails(API), MySQL, Docker, Redis
