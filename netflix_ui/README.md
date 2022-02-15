# 주요내용

* GestureDetector
* Wrap - 기본적으로 수평 방향으로 위젯들을 배열
* BottomNavigationBar - 이전에는 IndexedStack으로 구현 IndexedStack은 상태값을 계속 유지, 이번에는 setState를 통해(화면이 바뀔때마다 처음부터 새로시작하게됨)
* 스크롤하면 보이지않게되는 앱바, 최상단에 고정되는 앱바 - sliver를 이용해 구현
* Slivers 란 스크롤을 하면 상단에 고정되는 등의 커스텀 스크롤효과를 내기 위한 목적을 가진 위젯들
* ScrollController
* NotificationListener - 스크롤 이벤트가 일어날 때마다 스크롤 위치를 읽어주는 위젯. 기본적으로 앞의 스크롤뷰 위치를 읽어서 뒤에 위치한 스크롤 뷰를 이동시킴.
* showModalBottomSheet - BottomSheet를 불러옴
* NestedScrollView - TabBar를 화면 중간에 구현하기 위해 사용했음. 중첩된 스크롤뷰를 만들때 사용
* Future,async,await - 비동기로 데이터를 불러오기 위해 존재
* Future - 지금은 데이터가 없지만 미래에 데이터가 있을 거라고 알려주는 클래스
* async - 비동기로 쓰고 싶은 함수에는 async 키워드가 필요하며 이 함수는 항상 Future를 리턴함
* await - async안에만 사용이 가능하며, await가 적힌 곳에서프로그램은 데이터를 다 불러올 때까지 대기
* Transform 위젯 - 변환을 위한 위젯
