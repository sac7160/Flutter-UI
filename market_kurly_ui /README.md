# 1. 주요 내용
* routes 파일 - 앱의 화면 경로의 이름을 정의하고 관리하는 파일
* Navigator.pushreplacement 메서드 - 이전 경로를 없애주면서 새로운 화동으로 이동시킴
* 화면 이동,종료하는방법 - 로그인화면
* Form 위젯 - 로그인화면
* automaticallyImplyLeading - 이전 화면으로 되돌아 가는 아이콘 자동생성
* 홈화면 TabBar
* DefaultTabController - TabBar 또는 TabBarView 와 TabController를 공유하는데 사용되는 상속된 위젯
* 확장 메서드(Extension methods) - numberFormat 함수
* CustomScrollView
* Sliver - 여러 종류의 리스트 뷰가 하나의 화면에 동시에 존재할때(동적으로 들어오는 데이터에 따라 높이를 자동으로 결정해줌)
* RefreshIndicator
* SliverToBoxAdapter - CustomScrollView 안에 단일 위젯을 생성할때 사용
* SliverList
* SliverPadding - slivers 안에 패딩을 줄 때 사용. 이 예시에서는 상단과 하단에 패딩을 주기위해 사용함
* arguments 객체 설정 - 화면을 이동할 때 데이터를 전달해야 하는 상황에서 / Navigator.pushNamed 메서드에 arguments 속성 이용
* ModalRoute 객체 - 화면이 갱신될때, 즉 build메서드가 호출될 때 ModalRoute 객체를 이용해 arguments 속성을 받을 수 있음
* AnimatedContainer - 애니메이션 기능 간단하게 구현 가능
* FocusNode - 검색화면, 현재 Focus 상태를 확인