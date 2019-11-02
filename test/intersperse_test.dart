import 'package:intersperse/intersperse.dart';
import 'package:test/test.dart';

void main() {
  group("intersperse", () {
    test("0", () {
      expect(intersperse(-1, <int>[]), <int>[]);
    });
    test("1", () {
      expect(intersperse(-1, <int>[1]), <int>[1]);
    });
    test("2", () {
      expect(
        intersperse(-1, <int>[1, 2]),
        <int>[1, -1, 2],
      );
    });
    test("3", () {
      expect(
        intersperse(-1, <int>[1, 2, 3]),
        <int>[1, -1, 2, -1, 3],
      );
    });
  });

  group("intersperseOuter", () {
    test("0", () {
      expect(intersperseOuter(-1, <int>[]), <int>[]);
    });
    test("1", () {
      expect(intersperseOuter(-1, <int>[1]), <int>[-1, 1, -1]);
    });
    test("2", () {
      expect(intersperseOuter(-1, <int>[1, 2]), <int>[-1, 1, -1, 2, -1]);
    });
    test("3", () {
      expect(
          intersperseOuter(-1, <int>[1, 2, 3]), <int>[-1, 1, -1, 2, -1, 3, -1]);
    });
  });

  test("IterableIntersperseExtension ", () {
    expect(<int>[].intersperse(-1), <int>[]);
    expect(<int>[1].intersperse(-1), <int>[1]);
    expect(<int>[1, 2].intersperse(-1), <int>[1, -1, 2]);
    expect(<int>[1, 2, 3].intersperse(-1), <int>[1, -1, 2, -1, 3]);
    expect(<int>[].intersperseOuter(-1), <int>[]);
    expect(<int>[1].intersperseOuter(-1), <int>[-1, 1, -1]);
    expect(<int>[1, 2].intersperseOuter(-1), <int>[-1, 1, -1, 2, -1]);
    expect(<int>[1, 2, 3].intersperseOuter(-1), <int>[-1, 1, -1, 2, -1, 3, -1]);
  });
}
