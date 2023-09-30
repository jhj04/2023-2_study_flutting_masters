# Dart?

1. 여러가지 플랫폼에서 사용 가능

- javascript, ios, android, window, Mac 등 모두 호환

2. 2가지의 컴파일러를 제공
   - JIT(just-in-time): 코드를 바로바로 확인 가능
     - Dart VM
   - AOT(ahead-of-time): 아주 빠름
     - native ARM or x64 machine code: 기계어로 바꿔줌
3. null safety 가능
4. flutter 와 Dart의 미친 호환성
   - 제작사가 모두 구글이기 때문에 flutter를 더 빠르게 만들기 위해 dart를 수정가능
     -> dart를 flutter에 맞게 수정 가능

---

## 시작

main() 함수에서 모든게 시작.

## 변수

- var: 굳이 명시하지 않고 변수를 선언할 때
  - 함수나 method 안에서, 지역 변수로 사용할 때 많이 씀
- string(자료형 명시)
  - class 내부나 property 사용할 때, 전역 변수로 사용할 때 많이 씀

### Dynamic

- dynamic: 하나의 변수를 여러가지 자료형으로 같이 쓸 수 있게 해주는 자료형.
  - 명시: dynamic 으로 명시 후 사용 가능
  - 비 명시: var 사용 가능
- 단 사용 전 데이터 타입을 확인해 줘야함!

```dart
void main() {
  var name;
  name = "nico";
  name = 1;
  name = false;
}
```

## Null safety

null 값을 참조하지 못하게 막음

- 어떤 변수, 혹은 데이터가 null이 될 수 있음을 명시한다.

```dart
void main(){
	String name = 'nico';
	name = null; //오류
}
```

오류가 나는 이유는?
→ name이 String형 값만 담을 수 있는데 null은 String이 아니라서.

안 나려면?

```dart
String? name = 'nico';
name = null;
```

이제 오류가 나지 않는다.
→ 왜냐? ‘?’를 추가 해 줌으로써 name이 String일 수도, null 일 수도 있단걸 dart가 알 수 있기 때문이다.

_? : nullable_

이제 name의 값이 존재하는 지 알기 위해

```dart
if(name != null){
	name.isNotEmpty;
}
//->
name?.isNotEmpty;
로 축약 가능
name 이 null이 아니라면 isNotEmpty를 호출.
```

## 상수 선언

### Final

```dart
final String name = 'nico'
```

딱 한번만 할당 할 수 있음
→ 값 변경 불가

값을 부여하지 않은 상태에서도 이 변수를 상수로 선언 할 수 있음
→

### Late

```dart
late final String name;

name = 'nico'
```

데이터 없이 변수를 만들 수 있음
→ 나중에 필요한 데이터를 넣어 사용함

### const

상수 선언

- conpile-time constant

```dart
const name = 'nico';
```

컴파일 하기 전에 값을 알고 있는 변수(상수)를 만들 때 사용
→ 앱 배포 전 개발 당시 사용

## 자료형

```dart
String a = 'asdf';
bool t = true;
int i = 123;
double d = 12.33;
num n = 12;
n = 12.2;
```

- int일 수도, double일수도? 왜냐, 모든것은 오브젝인데 int, double이 모두 num을 상속받을 수 있기 때문!

### list

```dart
var numbers = [1, 2, 3, 4,];
List<int> numbers = [1, 2, 3, 4,];
```

### Map

⇒ in python 딕셔너리
근데 많이 사용하는 것 추천 X → class 사용 추

```dart
Map<key type, value type>
```

```dart
var player = {
	'name': 'dasom'
	'xp' : 19.00
	'superpower': false,
}
```

### Set

⇒python’s tuple

```dart
var numbers = {1, 2, 3, 4};
Set<int> numbers = {1, 2, 3, 4};
```

Set = sequence(순서).
→ list와 비슷한데 모든 요소가 유니크 해야함.
→ 요소 중복 X

## function

```dart
String sayHello(String name){
		return "Hello $name nice to meet you";
}
->
String sayHello(String name) => "Hello $name nice to meet you";
//이렇게 축약 가

void main(){
	sayHello('dasom');
}
```

한 줄 짜리 함수의 경우 fat arrow syntax를 사용하기!

```dart
num plus(num a, num b) => a+b;
```

처럼 사용 가능!

### Named Parameters

1. positional parameters
   → 함수 명(매개변수, , , , ){}
   (평소 하던 거: 선언, 호출 부분에서 똑같은 순서로 명시 하는 )
2. named parameters

- named argument
  - 매개변수(파라미터) 전달 할 때 순서 상관없이 명시해서 전달 가능~
  - 함수에서 명시할 때는 매개변수들한테 중괄호 씌우면 됨~
  - 단 매개변수 이름은 일치해야 함.
  - default value 설정 가능 → 매개변수 선언 시 값 지정.
    - 하는 이유: 유저가 null을 보내면 dart는 null safety가 적용되기 때문에 오류발생.

```dart
print(sayHello(
	age: 20,
	country: 'korea',
	name: 'dasom'
));
```

```dart
String sayHello({String name, int age, String country}){
		return "Hello $name, you are $age years old from $country";
}
```

- required → 언제나 호출 했을 때 매개변수를 받아야만 함 ⇒ 필수
  if 파라미터 다 안 갔다? 그럼 실행 안 시킴

### optional positional parameters

```dart
String sayHello({String name, int age, [String? country = 'cuba']})
		 => "Hello $name, you are $age years old from $country";

```

### QQ operaters

- QQ operaters → ??

```dart
=> name != null ? name.toUpperCase() : 'ANON';

->

=> name.toUpperCase() ?? 'ANON';
```

```dart
left ?? right
```

left가 null 이면 right 을 실행하고,
null이 아니라면 left를 그대로 시행한다.

- ?? = operaters

## typedef

→ 자료형에 alias를 붙일 수 있게 해준다.

```dart
typedef ListOfInts = List<int>;

->
List<int> reverseList(List<int>)를
ListOfInts reverseList(ListOfInts)로 바꿀 수 있다.
```

<aside>
💡 List를 reversed 하면 list 형이 아니라 iterable 로 나와서 다시 list로 바꿔줘야함!

</aside>

## 특이한 기능

### collection if

```dart
void main() {
  var giveMeFive = true;
  var numbers = [1,
  2,
  3,
  4,
  if(giveMeFive) 5
  ];
}
```

→

```dart
void main() {
  var giveMeFive = true;
  var numbers = [1,
  2,
  3,
  4,
  ];
  if(giveMeFive){
    numbers.add(5);
  }
}
```

와 같다.

### collection for

```dart
void main() {
  var oldF = ['nico', "lynn"];
  var newF = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldF) "❤️ $friend"
  ];
  print(newF);
}
```

### String interpolation

text에 변수를 추가하는 방법

```dart
void main(){
  var name = 'dasom';
  var greeting = "Hello evryone, My name is $name, nice to meet you";
  print(greeting);
}
```

$ 뒤에 변수 이름을 써주면 변수 내용이 들어감
만약 문자열 안에서 계산을 하고 싶다면
→ ${age +2} 와 같이 쓰면 된다.

## Class

```dart
class Player{
	String name;// property
	int xp;

	Player(this.name, this.xp);
//아주 간단한 생성자

	void sayHello(){
		print("Hi my name is $name");
	}
}

void main(){
	var player = Player('dasom', 2000);
	print(player.name);
}
```

- this 쓸 필요 없음. 물론 이름 똑같은게 있으면 다르게 쓰긴 해야 함.
- 생성자를 한 줄로 만들 수 있음.
  → 파라미터 부분에 this.변수 를 함으로써 축
- positional parameters 를 안 쓰려면?

```dart
class Player{
	String name;// property
	int xp;

	Player({this.name, this.xp});
//아주 간단한 생성자
}

void main(){
	var player = Player(
		name: "dasom",
		xp: 1200,
);
	print(player.name);
}
```

named constructors parameters
