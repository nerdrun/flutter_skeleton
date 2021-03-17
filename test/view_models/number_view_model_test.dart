import 'package:flutter_test/flutter_test.dart';
import 'package:skeleton/view_models/number_view_model.dart';

void main() {
  NumberViewModel numberViewModel;

  setUpAll(() {
    numberViewModel = NumberViewModel();
  });

  group('숫자 더하기 테스트', () {
    test('number view model의 count는 0입니다.', () {
      expect(numberViewModel.count, 0);
    });

    test('addCount가 호출되었을 때 number view model의 count가 1입니다.', () {
      numberViewModel.addCount();
      expect(numberViewModel.count, 1);
    });
  });
}