# SwiftSimpleMemo 🗓️

Simple memo app with UIKit &amp; SwiftUI

## TODO

### 기본 기능

- [x] 메모 리스트
- [x] 메모 등록
- [x] 메모 삭제
- [x] 메모 수정
- [x] 스토리지 저장
- [x] 메모 공유

### 추가 기능

- [ ] 이미지 메모 등록
- [ ] 상세보기에서 이미지 스와이퍼 구현
- [ ] 메모 정렬
      <br>
      <br>

## Today I Learned

- 데이터 갱신

  - ViewController 메소드 `viewWillAppear` - iOS13부터 default로 지원하는 sheet 형태에서는 viewWillAppear를 사용할 수 없음
  - `Notification` (Observer pattern)

- Storyboard에서 constraint를 주지 않은 곳이 있으면 빨간색 라인이 뜬다
- Core Data

  - 단말기 내부에 데이터를 보존, 캐싱하는 프레임워크
  - UI 블락을 일으키는 테스크들을 백그라운드에서 실행하도록 할 수 있음
  - 뷰(테이블뷰, 콜렉션뷰등)와 데이터간의 싱크를 맞추는 것에 도움을 줌
  - DB 관리가 따로 필요 없이 데이터 CRUD를 쉽게 해주고 버전 관리에 용이

  - Core Data Stack

    - Core Data Model을 생성 후 이를 관리할 수 있는 여러 클래스들이 있으며 이를 Core Data Stack이라 칭한다.
    - `NSPersistentContainer` model, context, coordinator를 모두 가진 하나의 클래스

- Delegate

  - [위임(Delegation)](https://bbiguduk.gitbook.io/swift/language-guide-1/protocols#delegation)은 클래스 또는 구조체가 책임의 일부를 다른 타입의 인스턴스에 넘겨주도록 하는 디자인 패턴
  - delegate 구현 방법
    - storyboard
    - extension을 통한 프로토콜 확장

- Escaping Closure (Swift)

  - 함수의 인자로 전달된 closure 중 함수가 리턴되어 스코프가 사라지지만 스코프를 escaping하여 함수 종료 후에도 바깥의 변수에 저장되어 실행되는 함수
    <br>예를 들어 비동기적 작업 처리 후 완료가 될 때 실행되는 완료 핸들러를 인자로 받을 때 탈출 클로저를 사용한다.
  - `self`를 탈출 클로저에서 참조하는 경우 self를 명시적으로 표시하거나 캡쳐 리스트에 포함시켜야 한다. 또한 탈출 클로저의 경우 강한 참조에 의한 메모리 릭이 발생하지 않도록 weak reference를 사용하여 캡쳐 리스트에 포함시켜야한다.

- 강한 참조 사이클 (Swift)

  - 2개 이상의 인스턴스 간의 강한 참조에 의해 변수를 nil로 선언하여도 ARC가 0으로 되지 않아 할당 해제가 되지 않고 메모리 누수가 발생하는 현상
  - 해결 방법

    1. 약한 참조 사용
       <br/>
       `weak` 키워드를 선언 전에 위치시킨 변수 또는 프로퍼티에 할당된 인스턴스는 약한 참조를 하고 있기 때문에 해당 인스턴스를 강하게 참조하는 변수를 nil로 선언하였을 때 ARC가 참조된 인스턴스를 처리하는 것을 중지 하지 않고 할당 해제될 수 있도록 한다.

    2. 미소유 참조 사용
       <br/>
       weak reference와 다르게 참조하고 있는 인스턴스의 수명보다 같거나 긴 경우에 사용된다. 약한 참조와 달리 항상 값을 참조하고 있는 상태로 예상될 때 사용된다.
