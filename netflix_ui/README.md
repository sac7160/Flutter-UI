# 주요내용

* GestureDetector
* Wrap - 기본적으로 수평 방향으로 위젯들을 배열
* BottomNavigationBar - 이전에는 IndexedStack으로 구현 IndexedStack은 상태값을 계속 유지, 이번에는 setState를 통해(화면이 바뀔때마다 처음부터 새로시작하게됨)
* 스크롤하면 보이지않게되는 앱바, 최상단에 고정되는 앱바 - sliver를 이용해 구현
