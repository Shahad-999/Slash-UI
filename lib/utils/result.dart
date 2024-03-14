import 'package:slash/utils/error_status.dart';

class Result<T> {
  final T? data;
  final ErrorStatus? errorStatus;

  Result({this.data, this.errorStatus})
      : assert(
            (data != null && errorStatus == null) ||
                (data == null && errorStatus != null),
            'you must pass either of data or status code');
}
