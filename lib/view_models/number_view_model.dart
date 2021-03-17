import 'package:skeleton/core/base_model.dart';
import 'package:skeleton/enums/view_status.dart';

class NumberViewModel extends BaseModel {
  int count = 0;

  void addCount() {
    setViewStatus(ViewStatus.BUSY);
    count++;
    setViewStatus(ViewStatus.IDLE);
  }
}