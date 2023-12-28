import 'package:flutter_beginner_class/23_12_28/data_source/time_api.dart';
import 'package:flutter_beginner_class/23_12_28/model/time.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('timeApi의 현재 시간이 Time 클래스에 전달되는지 테스트', () async {
    final api = TimeApi();
    Time time = await api.getTime();
    expect(time, isNotNull);
  });
}
