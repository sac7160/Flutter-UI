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


<br>
<br>
<br>
<p align = "center">
<img src="https://user-images.githubusercontent.com/77865395/154030655-ac79d343-d9da-4115-af34-8d1e777dd128.PNG" height = "500"/>
<img src="https://user-images.githubusercontent.com/77865395/154030676-c0fd8e69-e78d-4486-8d1e-8407e1102475.PNG" height = "500"/>
<img src="https://user-images.githubusercontent.com/77865395/154030692-675a862c-ad1c-4163-b9f2-e241b53fb6e6.PNG" height = "500"/>
<img src="https://user-images.githubusercontent.com/77865395/154030704-e994d0f7-2955-4d8e-85a8-e552b2663b0e.PNG" height = "500"/>
<img src="https://user-images.githubusercontent.com/77865395/154030719-2fdb6cff-d757-4d28-8872-6d2ba0564305.PNG" height = "500"/>
<img src="https://user-images.githubusercontent.com/77865395/154030736-a1396152-72dc-47c7-941b-3d80070c3398.PNG" height = "500"/>
  <img src="https://user-images.githubusercontent.com/77865395/154030746-d65f9ec0-e8fe-4c03-a090-9756410ee95f.PNG" height = "500"/>
  <img src="https://user-images.githubusercontent.com/77865395/154030761-1142def3-d0da-47af-836b-891d2b6a59a6.PNG" height = "500"/>
  <img src="https://user-images.githubusercontent.com/77865395/154030775-d6bd3f5f-8080-4147-8e5f-62607a3d4606.PNG" height = "500"/>
</p>  


