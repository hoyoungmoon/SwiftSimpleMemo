# SwiftSimpleMemo 🗓️

Simple memo app with UIKit &amp; SwiftUI

### TODO

- [ ] 메모 리스트
- [ ] 메모 등록
- [ ] 메모 삭제
- [ ] 메모 수정
- [ ] 스토리지 저장
- [ ] 이미지 메모 등록

### Today I Learned

- 데이터 갱신

  - viewWillAppear - iOS13부터 default로 지원하는 sheet 형태에서는 viewWillAppear를 사용할 수 없음
  - Notification (Observer pattern)

- Storyboard에서 constraint를 주지 않은 곳이 있으면 빨간색 라인이 뜬다
- Core Data

  - 단말기 내부에 데이터를 보존, 캐싱하는 프레임워크
  - UI 블락을 일으키는 테스크들을 백그라운드에서 실행하도록 할 수 있음
  - 뷰(테이블뷰, 콜렉션뷰등)와 데이터간의 싱크를 맞추는 것에 도움을 줌
  - DB 관리가 따로 필요 없이 데이터 CRUD를 쉽게 해주고 버전 관리에 용이

- Core Data Stack
  - Core Data Model을 생성 후 이를 관리할 수 있는 여러 클래스들이 있으며 이를 Core Data Stack이라 칭한다.
  - NSPersistentContainer
    - model, context, coordinator를 모두 가진 하나의 클래스
