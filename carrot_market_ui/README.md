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
* ListView.separated - 하단에 구분선이 있는 리스트 위젯을 만들 때 사용할 수 있는 위젯 / chat_screen에서는 ListView로 작성해봄
* Card 위젯 - 입체감과 모서리에 곡선이 필요한 위젯으 만들 때 사용, 위젯 자체에는 크기ㅡㄹ 지정할 수 없어 부모 위젯의 제약과 자식 위젯의 크기에 따라 크기 결정
* PreferredSize 위젯은 자식 위젯에게 어떤 제약도 부과하지 않고 부모 위젯에게 공간을 차지하는 크기만을 알려주는 위젯
* Text.rich 위젯 - 문단 단위로 텍스트를 꾸밈
* Align 위젯
* List.generate 생성자 - length 만큼 반복문을 돌면서 데이터의 집합(Collection)중 하나인 List형의 자료구조를 생성함 ( neighborhood_life_screen 스프레드연산자 사용예시 )
* TextField, InputDecoration
* 수평방향 스크롤 위젯 - 수평 스크롤 위젯의 부모 위젯은 수직 방향으로 스크롤 되느 ListView, ListView는 수직으로 스크롤 될 때 해당 방향으로 나열되는 위젯 각 각의 높이를 자식 위젯에게 위임함. 따라서 수평방향으로 스크롤하기 위해서는 고정 height값을 지정해야함
* Wrap 위젯 - 배치하고자 하는 방향에 공간이 부족할 때 사용, 자식을 Row나 Column으로 배치, 공간이 부족해지면 자식 위젯을 다음 줄에 배치(반응형 웹에 활용 가능)


<br>
<br>
<br>
<p align = "center">
<img src="https://user-images.githubusercontent.com/77865395/150637054-68e4aaeb-a9ee-4c3d-a915-488f2ef66f17.PNG" height = "500"/>
<img src="https://user-images.githubusercontent.com/77865395/150637059-60049a25-da21-45de-970d-ff371d727f5d.PNG" height = "500"/>
<img src="https://user-images.githubusercontent.com/77865395/150637130-79be59ec-e111-43ba-87c6-b64c782b96f0.PNG" height = "500"/>
<img src="https://user-images.githubusercontent.com/77865395/150637136-5f629333-ef10-4e3b-b628-0fae7536e792.PNG" height = "500"/>
<img src="https://user-images.githubusercontent.com/77865395/150637073-c708cbd4-d15a-47a2-8705-abec6513369f.PNG" height = "500"/>
<img src="https://user-images.githubusercontent.com/77865395/150637079-ee190a8b-b064-4efb-8826-f4d9f239605c.PNG" height = "500"/>
</p>                                                                         
