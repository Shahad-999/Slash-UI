import 'package:slash/utils/error_status.dart';

class Response<T> {
  final T? data;
  final ErrorStatus? errorStatus;

  Response({this.data, this.errorStatus})
      : assert(
            (data != null && errorStatus == null) ||
                (data == null && errorStatus != null),
            'you must pass either of data or status code');
}
