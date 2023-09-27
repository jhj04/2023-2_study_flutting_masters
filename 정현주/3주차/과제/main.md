```dart

void main(){
  print("                   ");
  print("-------------------");
  print("플러팅 장인들 자판기");
  print("-------------------");
  print("                   ");
  print('메뉴 선택');  // print

  Map<int,String> drinks = {
    1:'사이다',
    2:'콜라',
    3:'아이스티'
  };   // Map

  print(drinks); 

  print("메뉴를 선택해주세요!");

  int drink = 1;

  if (drink == 1) {
    print ('사이다입니다.');  // if 사용
  }

  if (drink == 2) {
    print ('콜라입니다.');
  }
}   // 입력 받는 걸로 다시 만들기!!

```
