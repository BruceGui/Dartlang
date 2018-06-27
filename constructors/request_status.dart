
import 'enumerated_type.dart';

class RequestStatus<int> extends Enum {

  static const RequestStatus AWAIT = const RequestStatus(0);
  static const RequestStatus IN_PROGRESS = const RequestStatus(1);
  static const RequestStatus SUCCESS = const RequestStatus(2);
  static const RequestStatus FAULT = const RequestStatus(3);

  const RequestStatus(int value) : super(value);

}