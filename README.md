# Dart Sample 프로젝트

Dart 언어의 기본 기능을 보여주는 샘플 프로젝트입니다. Dart 3.5.3 이상을 사용한 커맨드 라인 애플리케이션으로, 객체 지향 프로그래밍의 핵심 개념과 Dart의 특별한 기능들을 보여줍니다.

## 주요 기능

이 프로젝트는 다음과 같은 Dart 기능의 데모를 포함하고 있습니다:

- **열거형(Enum)**: `Color` 열거형을 사용한 상수 그룹 정의
- **추상 클래스**: `Shape` 추상 클래스를 통한 인터페이스 정의
- **Mixin**: `ShapeColor` 믹스인을 통한 코드 재사용
- **상속**: `Circle` 클래스가 `Shape`를 확장하고 `ShapeColor` 믹스인을 사용하는 방법
- **컬렉션**: 리스트 생성 및 반복 방법

## 시작하기

### 필수 조건

- [Dart SDK](https://dart.dev/get-dart) 3.5.3 이상
- 명령줄 환경

### 설치

1. 이 저장소를 클론합니다:
```bash
git clone https://github.com/haeseoky/dart-sample.git
cd dart-sample
```

2. 프로젝트 의존성을 설치합니다:
```bash
dart pub get
```

### 실행

메인 애플리케이션 실행:
```bash
dart run bin/sample.dart
```

### 테스트

테스트를 실행하려면:
```bash
dart test
```

## 프로젝트 구조

```
dart-sample/
├── bin/
│   └── sample.dart     # 메인 애플리케이션 코드
├── lib/
│   └── sample.dart     # 라이브러리 코드 (calculate 함수)
├── test/
│   └── sample_test.dart # 테스트 코드
├── pubspec.yaml        # 프로젝트 메타데이터 및 의존성
└── analysis_options.yaml # Dart 린트 설정
```

## 예제 코드 설명

### 메인 애플리케이션 (bin/sample.dart)

```dart
import 'package:sample/sample.dart' as sample;

enum Color { red, green, blue }

abstract class Shape {
  void draw();
}

// mixin class
mixin ShapeColor {
  Color color = Color.red;
}

class Circle extends Shape with ShapeColor {
  final double radius;

  Circle(this.radius);

  @override
  void draw() {
    print('Drawing a circle with radius $radius and color $color');
  }
}

void main(List<String> arguments) {
  // Create a circle
  final circle = Circle(5.0);
  circle.draw();

  // Create a list of colors
  final colors = [Color.red, Color.green, Color.blue];
  for (final color in colors) {
    print(color);
  }
}
```

### 라이브러리 코드 (lib/sample.dart)

```dart
int calculate() {
  return 6 * 7;
}
```

### 테스트 코드 (test/sample_test.dart)

```dart
import 'package:sample/sample.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
```

## Dart 학습 자료

Dart 언어에 대한 자세한 내용은 다음 자료를 참고하세요:

- [Dart 공식 문서](https://dart.dev/guides)
- [Dart 언어 투어](https://dart.dev/guides/language/language-tour)
- [DartPad - 웹 기반 Dart 편집기](https://dartpad.dev/)

## 라이선스

이 프로젝트는 MIT 라이선스 하에 배포됩니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.
