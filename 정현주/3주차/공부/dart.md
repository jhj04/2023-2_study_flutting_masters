# Hello World

```dart
void main() {
    print("hello world");
}

```

main 함수 -> 메인 함수에서 호출

; 필수

# The Var Keyword

```dart
void main() {
    String name = 'hj';
    name = 'hj';
}

```
함수, 메소드 내부 지역변수 -> var

class 변수 혹은 property 선언 -> 타입 지정

어떤 상태이든 업데이트 가능 (데이터 타입 유지한다면)



# dynamic

```dart
void main() {
    var name;
    name = 'jh';
    name = 12;
    name = true;

    if(name is String){
        name.
    };

    if(name is int){
        name.
    };
}
```

var 대신 dynamic 가능

이상적으로는 쓰는 것을 피해야하는, 반드시 필요한 상황에서만 사용

정해지지 않았을 때


# Nullable Variables

```dart
void main() {
  String? hj = 'hj';
  hj = null;
  
//   if (hj != null){
//     hj.isNotEmpty; 코드 단축하여 아래처럼 사용 가능

    hj?.isNotEmpty;  // null 이 아니면 isNotEmpty
//  }
}
```

null일 수도 있음을 암시.

? 필요!!


# Final Variables

```dart
void main() {
  var name = 'hj';   // variable -> 알맞은 타입을 넣어 준다면

  final name = 'hj';   // 수정 불가 js의 const  //final String name으로 타입을 추가해주는 것도 가능
}

```

# Late Variables

```dart
late
void main() {
    late final String name;  
    name = 'hj';
  
}
```

late를 활용하여 나중에 값 넣을 수 있음.

실수 줄여줌. 값을 넣기 전에 사용 불가 data fetching에 유용.

api 관련하여 사용



# const

```
void main() {
  const name = 'hj';
}
```

dart의 const는 js의 final과 비슷 (js의 const와는 다름))

compile time constant 생성

수정 불가 + "하드 코딩(컴파일할 때 알고 있음)" -> 사용자 입력이 필요하다면 final 혹은 var

# Basic Data Types

```dart
void main() {
  int i = 12;
  var name = 'name';
}

```

var 은 가능한 많이 특히, 지역 변수에

```dart
void main() {
  String name = 'hj';
  bool alive = true;
  int age = 12;
  double money = 66.99;
  
  num x = 12;
  x = 1.2;
}

```

거의 모두 class 혹은 object

실제 자료형 확인 가능



# list

```dart
void main() {
  var numbers = [1,2,3,4];
  List<int> numbers = [1,2,3,4];
  numbers.add(1);

  numbers.first; // 첫번째 가져오기
  numbers.last;  // 마지막 가져오기
}

```



# collection if

```dart
void main() {
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if(giveMeFive) 5,   
  ];
    // = if (giveMeFive){
    // numbers.add(5)}

  print(numbers);
}

```



# string interpolation

```dart
void main() {
  var name = 'hj';
  var age = 10;
  var greeting = "Hello everyone, my name is $name and I'm ${age + 2}, nice to meet you!";
  print(greeting);
}
```

$변수명 사용

계산 필요할 시 "${변수+계산}"



# collection for

```dart
void main() {
  var OldFriends = ['hj', 'aa'];
  var newFriends = [
    'l',
    'j',
    'd',
    for(var friend in oldFriends) "* $friend"
  ]
}

```


# Maps = python dictionary

```dart
void main() {
  var player = {
    'name' : 'hj',
    'xp' : '19.99',
    'superpower' : 'false',
  };

  Map<int,bool> player = {
    1: true,
    2: false,
    3: true
  };
  player.
  
  List<Map<String, Object>> players = [
    {'name':'hj', 'xp': '19.99'},
  ]; // 이러한 것도 가능 but 비추 대신 class 사용
}

```

# Sets

```dart
void main() {
  Set<int> numbers = {1,2,3,4};
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers);
}  // set 는 중복 불가
```

# Parameters

```dart
String sayHello(String potato) {
  return "Hello $potato nice to meet you!";
}

void main() {
  print(sayHello('hj'));
}



String sayHello(String name, int age, [String? country = 'cuba']) =>
    'Hello $name, you are $age years old from $country';

void main(){
  var results = sayHello('hj', 12);
  print(results);
}

```

# QQ operator

?? 사용



# Named constructor

```dart
class Player{
  final String name;
  int xp;
  String team;
  
  Player.fromJson(Map<String, dynamic> playerJson) :
    name = playerJson['name'],
    xp = playerJson['xp'],
    team = playerJson['team'];  // 초기화 작업
  
  void sayHello() {
    print('Hi my name is $name');
  }
}

void main() {
  var apiData = [
    {
      "name":"hj",
      "team":"a",
      "xp":0,
    },

    {
      "name":"jhj",
      "team":"b",
      "xp":10,
    },
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}


String Drink(String? drink) => 
  drink != null ? drink.toUpperCase() : '다시 입력해주세요';
```
