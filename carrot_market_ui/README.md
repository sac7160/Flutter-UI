# 주요 내용
* TextTheme, AppBarTheme
* 메인화면 - IndexedStack, bottomNavigationBar
* BottomNavigationBarType.fixed - 3개 이상의 아이템을 표시할 때 설정
* appBar - bottom 속성
* 모델 클래스 (이 앱에서는 product.dart 의 Product 클래스)
    : 앱에서는 웹서버에서 JSON 기반 API를 호출하여 데이터를 로드하고, JSON 기반의 문자열 데이터를 해당 언어의 오브젝트(클래스)로 변환하는데 이때 필요한 클래스
    : JSON Parsing - 데이터를 Object로 변환하는 과정
* Visibility 위젯 - 데이터 상태에 따라 위젯을 감추거나 보여줘야 할 때 사용
* NumberFormat 기능 - intl 라이브러리, 가격표시할때 사용했음
* ListView.separated - 하단에 구분선이 있는 리스트 위젯을 만들 때 사용할 수 있는 위젯
* Card 위젯 - 입체감과 모서리에 곡선이 필요한 위젯으 만들 때 사용, 위젯 자체에는 크기ㅡㄹ 지정할 수 없어 부모 위젯의 제약과 자식 위젯의 크기에 따라 크기 결정